// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoResponse _$PhotoResponseFromJson(Map<String, dynamic> json) =>
    PhotoResponse(
      embedded: Embedded.fromJson(json['_embedded'] as Map<String, dynamic>),
      created: DateTime.parse(json['created'] as String),
      modified: DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$PhotoResponseToJson(PhotoResponse instance) =>
    <String, dynamic>{
      '_embedded': instance.embedded,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };

Embedded _$EmbeddedFromJson(Map<String, dynamic> json) => Embedded(
      items: (json['items'] as List<dynamic>)
          .map((e) => PhotoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$EmbeddedToJson(Embedded instance) => <String, dynamic>{
      'items': instance.items,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
    };

PhotoDto _$PhotoDtoFromJson(Map<String, dynamic> json) => PhotoDto(
      size: (json['size'] as num).toInt(),
      name: json['name'] as String,
      created: DateTime.parse(json['created'] as String),
      resourceId: json['resource_id'] as String,
      modified: DateTime.parse(json['modified'] as String),
      mimeType: json['mime_type'] as String,
      file: json['file'] as String,
      mediaType: json['media_type'] as String,
      path: json['path'] as String,
    );

Map<String, dynamic> _$PhotoDtoToJson(PhotoDto instance) => <String, dynamic>{
      'size': instance.size,
      'name': instance.name,
      'created': instance.created.toIso8601String(),
      'resource_id': instance.resourceId,
      'modified': instance.modified.toIso8601String(),
      'mime_type': instance.mimeType,
      'file': instance.file,
      'media_type': instance.mediaType,
      'path': instance.path,
    };
