// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'photo_dto.g.dart';

@JsonSerializable()
class PhotoResponse {
  @JsonKey(name: '_embedded')
  final Embedded embedded;
  final DateTime created;
  final DateTime modified;

  PhotoResponse({
    required this.embedded,
    required this.created,
    required this.modified,
  });

  factory PhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$PhotoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoResponseToJson(this);
}

@JsonSerializable()
class Embedded {
  final List<PhotoDto> items;
  final int limit;
  final int offset;
  final int total;

  Embedded({
    required this.items,
    required this.limit,
    required this.offset,
    required this.total,
  });

  factory Embedded.fromJson(Map<String, dynamic> json) =>
      _$EmbeddedFromJson(json);
  Map<String, dynamic> toJson() => _$EmbeddedToJson(this);
}

@JsonSerializable()
class PhotoDto {
  final int size;
  final String name;
  final DateTime created;
  @JsonKey(name: 'resource_id')
  final String resourceId;
  final DateTime modified;
  @JsonKey(name: 'mime_type')
  final String mimeType;
  final String file;
  @JsonKey(name: 'media_type')
  final String mediaType;
  final String path;

  PhotoDto({
    required this.size,
    required this.name,
    required this.created,
    required this.resourceId,
    required this.modified,
    required this.mimeType,
    required this.file,
    required this.mediaType,
    required this.path,
  });

  factory PhotoDto.fromJson(Map<String, dynamic> json) =>
      _$PhotoDtoFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoDtoToJson(this);
}
