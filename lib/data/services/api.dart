import 'package:dio/dio.dart';

class Api {
  final Dio _dio;

  Api(this._dio);

  Future<Response> get(String url) async {
    try {
      final response = await _dio.get(url);
      return (response);
    } on DioException catch (e) {
      return throw Exception("Erro ao fazer a requisição: $e");
    }
  }
}
