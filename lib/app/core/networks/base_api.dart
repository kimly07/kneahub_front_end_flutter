import 'dart:math';

import 'package:dio/dio.dart';
import 'package:todo_app_frontend/app/core/networks/dio_client.dart';
import 'package:todo_app_frontend/app/data/models/api_response.dart';

class BaseApi {
  final Dio _dio = DioClient.instance;

  String _handleError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection time out. Check your internet';
      case DioExceptionType.receiveTimeout:
        return 'Server took to long to response';
      case DioExceptionType.badResponse:
        final msg = e.response?.data?['message'];
        return msg ?? 'Server error: ${e.response?.statusCode}';
      case DioExceptionType.connectionError:
        return 'Please check your internet';
      default:
        return 'Unexpected error occurred';
    }
  }

  Future<ApiResponse<T>> get<T>(
    String endPoint,
    Map<String, dynamic>? queryParam,
    T Function(dynamic json) fromJson,
  ) async {
    try {
      final response = await _dio.get(endPoint, queryParameters: queryParam);
      return ApiResponse.success(fromJson(response.data));
    } on DioException catch (e) {
      return ApiResponse.error(_handleError(e));
    }
  }

  Future<ApiResponse<T>> post<T>(
    String endPoint, {
    required Map<String, dynamic> body,
    required T Function(dynamic json) fromJson,
  }) async {
    try {
      final response = await _dio.post(endPoint, data: body);

      return ApiResponse.success(fromJson(response.data));
    } on DioException catch (e) {
      return ApiResponse.error(_handleError(e));
    }
  }

  Future<ApiResponse<T>> put<T>(
    String endPoint, {
    required Map<String, dynamic> body,
    required T Function(dynamic json) fromJson,
  }) async {
    try {
      final response = await _dio.put(endPoint, data: body);
      return ApiResponse.success(fromJson(response.data));
    } on DioException catch (e) {
      return ApiResponse.error(_handleError(e));
    }
  }

  Future<ApiResponse<T>> delete<T>(
    String endPoint, {
    required Map<String, dynamic> body,
    required T Function(dynamic json) fromJson,
  }) async {
    try {
      final response = await _dio.delete(endPoint, data: body);
      return ApiResponse.success(fromJson(response.data));
    } on DioException catch (e) {
      return ApiResponse.error(_handleError(e));
    }
  }
}
