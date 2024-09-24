/* =======================================================
 *
 * Created by anele on 24/09/2024.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'dart:io';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:acecomponents/api/api.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:http_interceptor/models/interceptor_contract.dart';

class AuthController {
  final BuildContext context;

  AuthController(this.context);


  CallApi apiService = CallApi(
    InterceptedClient.build(interceptors: <InterceptorContract>[LoggerInterceptor()]),
  );


  Future<dynamic> signInUser(dynamic data) async {
    Map<String, dynamic> parsedData;

    try {
      const dynamic response = ''; // Make call

      if (response.statusCode == 200) {
        parsedData = jsonDecode(response.body);
      } else {
        return Future.error('Error while fetching.', StackTrace.fromString(response.body));
      }

    } on FormatException {
      return Future.error('Bad response format 👎');
    } on SocketException {
      return Future.error('No Internet connection 😑');
    } on Exception catch (error) {
      log(error.toString());
      return Future.error('Unexpected error 😢');
    }

    return parsedData;
  }

}
