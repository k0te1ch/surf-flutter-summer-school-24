// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_entity.freezed.dart';
part 'photo_entity.g.dart';

@freezed
class PhotoEntity with _$PhotoEntity {
  const factory PhotoEntity({
    required String id,
    required String imageUrl,
    String? description,
  }) = _PhotoEntity;

  factory PhotoEntity.fromJson(Map<String, dynamic> json) => _$PhotoEntityFromJson(json);
}
