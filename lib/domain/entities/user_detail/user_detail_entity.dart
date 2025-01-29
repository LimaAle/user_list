import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_list/domain/entities/user/user_entity.dart';

part 'user_detail_entity.freezed.dart';
part 'user_detail_entity.g.dart';

@freezed
sealed class UserDetailEntity with _$UserDetailEntity {
  const factory UserDetailEntity({
    required int id,
    required UserEntity user,
    required String street,
    required String city,
    required String country,
    required String state,
  }) = _UserDetailEntity;

  // factory UserDetailEntity.fromJson(Map<String, Object?> json){
  //   var id = json['id'];
  //   if (id is String) {
  //     id = int.tryParse(id) ?? 0;
  //   } else if (id is num) {
  //     id = id.toInt();
  //   } 
  //   json['id'] = id; 
  //    return _$UserDetailEntityFromJson(json);}
  factory UserDetailEntity.fromJson(Map<String, Object?> json)=>_$UserDetailEntityFromJson(json);
}
