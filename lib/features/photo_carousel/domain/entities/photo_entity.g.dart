// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoEntityImpl _$$PhotoEntityImplFromJson(Map<String, dynamic> json) =>
    _$PhotoEntityImpl(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$PhotoEntityImplToJson(_$PhotoEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
    };
