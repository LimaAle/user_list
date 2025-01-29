import 'package:user_list/data/services/api.dart';
import 'package:user_list/domain/entities/user/user_entity.dart';
import 'package:user_list/domain/entities/user_detail/user_detail_entity.dart';

class UserApi {
  final Api _api;

  UserApi(this._api);

  Future<List<UserEntity>> getUser()async{
    try {
      final response = await _api.get('/users');
      if (response.statusCode == 200) {
        List<UserEntity> users = (response.data as List)
            .map((item) => UserEntity.fromJson(item as Map<String, dynamic>))
            .toList();
        return users;
      } else {
        throw Exception("Erro: Status code ${response.statusCode}");
      }
    }  catch (e) {
      throw Exception("Erro ao fazer a requisição: $e");
    }

  }
  Future<List<UserDetailEntity>> getUserDetail(int id)async{
    try {
      final response = await _api.get('/users/$id/details');
      if (response.statusCode == 200) {
        List<UserDetailEntity> users = (response.data as List)
            .map((item) => UserDetailEntity.fromJson(item as Map<String, dynamic>))
            .toList();
        return users;
      } else {
        throw Exception("Erro: Status code ${response.statusCode}");
      }
    }  catch (e) {
      throw Exception("Erro ao fazer a requisição: $e");
    }

  }
}