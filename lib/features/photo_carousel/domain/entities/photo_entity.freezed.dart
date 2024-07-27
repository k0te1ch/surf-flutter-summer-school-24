// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotoEntity _$PhotoEntityFromJson(Map<String, dynamic> json) {
  return _PhotoEntity.fromJson(json);
}

/// @nodoc
mixin _$PhotoEntity {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoEntityCopyWith<PhotoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoEntityCopyWith<$Res> {
  factory $PhotoEntityCopyWith(
          PhotoEntity value, $Res Function(PhotoEntity) then) =
      _$PhotoEntityCopyWithImpl<$Res, PhotoEntity>;
  @useResult
  $Res call({String id, String imageUrl, String? description});
}

/// @nodoc
class _$PhotoEntityCopyWithImpl<$Res, $Val extends PhotoEntity>
    implements $PhotoEntityCopyWith<$Res> {
  _$PhotoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoEntityImplCopyWith<$Res>
    implements $PhotoEntityCopyWith<$Res> {
  factory _$$PhotoEntityImplCopyWith(
          _$PhotoEntityImpl value, $Res Function(_$PhotoEntityImpl) then) =
      __$$PhotoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String imageUrl, String? description});
}

/// @nodoc
class __$$PhotoEntityImplCopyWithImpl<$Res>
    extends _$PhotoEntityCopyWithImpl<$Res, _$PhotoEntityImpl>
    implements _$$PhotoEntityImplCopyWith<$Res> {
  __$$PhotoEntityImplCopyWithImpl(
      _$PhotoEntityImpl _value, $Res Function(_$PhotoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? description = freezed,
  }) {
    return _then(_$PhotoEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoEntityImpl implements _PhotoEntity {
  const _$PhotoEntityImpl(
      {required this.id, required this.imageUrl, this.description});

  factory _$PhotoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final String? description;

  @override
  String toString() {
    return 'PhotoEntity(id: $id, imageUrl: $imageUrl, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoEntityImplCopyWith<_$PhotoEntityImpl> get copyWith =>
      __$$PhotoEntityImplCopyWithImpl<_$PhotoEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoEntityImplToJson(
      this,
    );
  }
}

abstract class _PhotoEntity implements PhotoEntity {
  const factory _PhotoEntity(
      {required final String id,
      required final String imageUrl,
      final String? description}) = _$PhotoEntityImpl;

  factory _PhotoEntity.fromJson(Map<String, dynamic> json) =
      _$PhotoEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get imageUrl;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$PhotoEntityImplCopyWith<_$PhotoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
