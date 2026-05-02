class ApiResponse<T> {
  final T? data;
  final String? error;
  final bool? isSuccess;
  ApiResponse._({this.data, this.error, this.isSuccess});

  factory ApiResponse.success(T data) =>
      ApiResponse._(data: data, isSuccess: true);

  factory ApiResponse.error(String error) =>
      ApiResponse._(error: error, isSuccess: false);
}
