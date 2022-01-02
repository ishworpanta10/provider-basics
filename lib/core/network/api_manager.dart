import 'package:dio/dio.dart';

import 'api_interceptors.dart';

/// Class [ApiManager]
/// A wrapper for managing CRUD actions using dio.
/// Used by repositories.
class ApiManager {
  final _connectTimeout = 20000; //12000;
  final _receiveTimeout = 8000;

  /// Dio instance used for API requests.
  Dio? _dio;

  ApiManager() {
    BaseOptions options = BaseOptions(
      baseUrl: "BASE_URL",
      connectTimeout: _connectTimeout,
      receiveTimeout: _receiveTimeout,
      responseType: ResponseType.json,
      contentType: Headers.jsonContentType,
    );

    if (_dio != null) return;
    _dio = Dio(options);
    _dio?.interceptors.add(
      ApiInterceptor(
        dioInstance: _dio ?? Dio(options),
      ),
    );
  }

  /// Method [get]
  /// Method for GET requests.
  Future<Response<T>>? get<T>(String path, {Options? options}) {
    return _dio?.get(path, options: options);
  }

  /// Method [post]
  /// Method for POST requests.
  Future<Response<T>>? post<T>(String path, {data, Options? options}) {
    return _dio?.post(path, data: data, options: options);
  }

  /// Method [put]
  /// Method for PUT requests.
  Future<Response<T>>? put<T>(String path, {data, Options? options}) {
    return _dio?.put(path, data: data, options: options);
  }

  /// Method [patch]
  /// Method for PATCH requests.
  Future<Response<T>>? patch<T>(String path, {data, Options? options}) {
    return _dio?.patch(path, data: data, options: options);
  }

  /// Method [delete]
  /// Method for DELETE requests.
  Future<Response<T>>? delete<T>(String path, {data, Map<String, dynamic>? queryParameters, Options? options}) {
    return _dio?.delete(path, data: data, queryParameters: queryParameters, options: options);
  }

  /// Method [fileUpload]
  /// Uploads a file or files to server using [FormData] and sets the necessary  headers
  Future<Response<T>?>? fileUpload<T>(String path, {FormData? data}) async {
    return post(
      path,
      options: Options(
        headers: {
          'enctype': 'multipart/form-data',
        },
      ),
      data: data,
    );
  }
}
