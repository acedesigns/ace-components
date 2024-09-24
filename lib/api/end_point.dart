/* =======================================================
 *
 * Created by anele on 18/07/2023.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';


class CallApi {
  final String _url = 'http://example.com/api/v1/';

  InterceptedClient client;

  CallApi(this.client);
  
  // ignore: prefer_typing_uninitialized_variables
  //var http;

  Map<String, String> _setHeaders() => <String, String>{
    'Accept': 'application/json',
    'Content-type': 'application/json',
    // If Server is Laravel
    'X-Requested-With': 'XMLHttpRequest',
  };

  Future<dynamic> postData(dynamic data, String apiUrl) async {
    String fullUrl = _url + apiUrl;
    return await http.post(Uri.parse(fullUrl),body: jsonEncode(data), headers: _setHeaders());
  }

  Future<dynamic> getData(String apiUrl) async {
    String fullUrl = _url + apiUrl;
    return await http.get(Uri.parse(fullUrl), headers: _setHeaders());
  }

}
