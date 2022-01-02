import 'package:dio/dio.dart';
import 'package:provider_demo/core/services/service_locator.dart';
import 'package:provider_demo/core/services/shared_preferences.dart';

/// [ApiInterceptor] : Intercepts requests before request and adds required headers
class ApiInterceptor extends Interceptor {
  final Dio dioInstance;

  ApiInterceptor({required this.dioInstance});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String? accessToken = await locator<SharedPrefsManager>().readKey();
    options.headers = {
      ...options.headers,
      'content-type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final responseData = err.response?.data;
    if (responseData is Map) {
      Map responseValue = responseData;
      if (responseValue['message'] == 'Unauthorized') {
        locator<SharedPrefsManager>().clearUserData();
        // locator<NavigationService>().pushNamedAndRemoveUntil(NavigationRoutes.login, arguments: false);
        return;
      }
    }
    super.onError(err, handler);
  }
}
