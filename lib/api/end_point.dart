/* =======================================================
 *
 * Created by anele on 18/07/2023.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'dart:convert';
//import 'package:http/http.dart' as http;


class CallApi {
  final String _url = 'http://example.com/api/v1/';
  // remove the bellow var & uncomment the above
  // http import
  // make sure to add it on pubspec.yml file
  // ` flutter pub add http `
  
  // ignore: prefer_typing_uninitialized_variables
  var http;

  _setHeaders() => <String, String>{
    'Accept': 'application/json',
    'Content-type': 'application/json',
    // If Server is Laravel
    'X-Requested-With': 'XMLHttpRequest',
  };

  postData(dynamic data, String apiUrl) async {
    String fullUrl = _url + apiUrl;
    return await http.post(Uri.parse(fullUrl),body: jsonEncode(data), headers: _setHeaders());
  }

  getData(String apiUrl) async {
    String fullUrl = _url + apiUrl;
    return await http.get(Uri.parse(fullUrl), headers: _setHeaders());
  }

}

