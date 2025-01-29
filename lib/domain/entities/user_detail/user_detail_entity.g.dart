// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailEntityImpl _$$UserDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailEntityImpl(
      id: (json['id'] as num).toInt(),
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      street: json['street'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      state: json['state'] as String,
    );

Map<String, dynamic> _$$UserDetailEntityImplToJson(
        _$UserDetailEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'street': instance.street,
      'city': instance.city,
      'country': instance.country,
      'state': instance.state,
    };
