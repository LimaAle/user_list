
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';


@freezed
sealed class UserEntity with _$UserEntity {
  const factory UserEntity({
  required int id,
  required String name,
  required String email,
  required String avatar, 
  })=_UserEntity;
  
  // factory UserEntity.fromJson(Map<String,Object?> json) {
  //   var id = json['id'];
  //   if (id is String) {
  //     id = int.tryParse(id) ?? 0;
  //   } else if (id is num) {
  //     id = id.toInt();
  //   } 
  //   json['id'] = id;
  //    return _$UserEntityFromJson(json);}
  factory UserEntity.fromJson(Map<String,Object?> json) => _$UserEntityFromJson(json);
}