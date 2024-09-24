/* =======================================================
 *
 * Created by anele on 24/09/2024.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'package:http_interceptor/http_interceptor.dart';

class LoggerInterceptor extends InterceptorContract {

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    print('----- Request -----');
    print(request.toString());
    print(request.headers.toString());
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({required BaseResponse response}) async {
    print('----- Response -----');
    print('Code: ${response.statusCode}');
    if (response is Response) {
      print( (response).body );
      //inspect( (response).body );
    }
    return response;
  }
}