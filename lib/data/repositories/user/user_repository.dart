import 'package:user_list/domain/entities/user/user_entity.dart';
import 'package:user_list/domain/entities/user_detail/user_detail_entity.dart';

abstract interface class UserRepository {
  Future<List<UserEntity>> getUser();
  Future<List<UserDetailEntity>>getUserDetail(int id);
}