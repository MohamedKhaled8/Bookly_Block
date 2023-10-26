import 'package:dio/dio.dart';

class ApiServices {
  // ignore: unused_field
  final _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio _dio;
  ApiServices(
    this._dio,
  );

  Future<Map<String, dynamic>> get({required String endPoit}) async {
    Response response = await _dio.get('$_baseUrl$endPoit');

    return response.data;
  }
}
