// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:surf_flutter_summer_school_24/api/data/photo/photo_dto.dart';

part 'photo_api.g.dart';

/// API for photos.
@RestApi(baseUrl: 'https://cloud-api.yandex.net')
abstract class PhotoApi {
  /// API creation factory using [Dio].
  factory PhotoApi(Dio dio, {String baseUrl}) = _PhotoApi;

  /// Request to get photos.
  @GET('/v1/disk/resources')
  Future<PhotoResponse> getPhotos(
    @Query('path') String path,
    @Header('Authorization') String token,
  );
}
