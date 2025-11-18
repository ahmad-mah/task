import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://heavenvally.zeroonez.com/api/';

  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    final response = await _dio.get('$_baseUrl$endpoint');
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endpoint,
    Map<String, dynamic>? body,
  }) async {
    final response = await _dio.post('$_baseUrl$endpoint', data: body);
    return response.data;
  }
}
