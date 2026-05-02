import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:get/get.dart' show Get;
import 'package:todo_app_frontend/app/core/secure_storage/token_secure_storage.dart';

class AppInterceptor extends Interceptor {
  final secureStorage = TokenSecureStorage();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = secureStorage.getToken();
    options.headers['Authorization'] = 'Bear $token';
    log('$token');
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    log('response: ${response.statusCode}');
    handler.next(response);
  }
  
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final status = err.response?.statusCode;
    
    if (status == 401) {
      log('Unauthorized redirect to login');
    } else if (status == 500) {
      log('Server error');
    }
    handler.next(err);
  }
}
