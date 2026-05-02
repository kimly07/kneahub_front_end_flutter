import 'package:dio/dio.dart';

import 'app_interceptor.dart';

class DioClient {
  static Dio? _dio;

  static Dio get instance{
    _dio ??= _createDio();
    return _dio!;
  }

  static Dio _createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'heheheheheheh',
        connectTimeout: Duration(seconds: 10),
        receiveTimeout: Duration(seconds: 10),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }
      )
    );

    dio.interceptors.add(AppInterceptor());
    return dio;
  }
}