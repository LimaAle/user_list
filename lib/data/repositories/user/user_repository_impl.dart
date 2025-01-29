import 'package:user_list/data/repositories/user/user_repository.dart';
import 'package:user_list/data/services/user/user_api.dart';
import 'package:user_list/domain/entities/user/user_entity.dart';
import 'package:user_list/domain/entities/user_detail/user_detail_entity.dart';

class UserRepositoryImpl implements UserRepository{
  UserRepositoryImpl(this._userApi);

  final UserApi _userApi;

  @override
  Future<List<UserEntity>> getUser() {
    return _userApi.getUser();
  }

  @override
  Future<List<UserDetailEntity>> getUserDetail(int id) {
    return _userApi.getUserDetail(id);
  }

}