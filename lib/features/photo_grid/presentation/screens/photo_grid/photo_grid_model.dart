// ignore_for_file: public_member_api_docs

import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/domain/entities/photo_entity.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/domain/repositories/i_photo_grid_repository.dart';

class PhotoGridModel extends ElementaryModel {
  final IPhotoGridRepository _repository;

  List<PhotoEntity> photos = [];

  PhotoGridModel({
    required IPhotoGridRepository repository,
    super.errorHandler,
  }) : _repository = repository;

  Future<List<PhotoEntity>> loadPhotos() async {
    photos = await _repository.getPhotos();
    return photos;
  }
}
