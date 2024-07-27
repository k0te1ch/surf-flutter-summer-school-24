// ignore_for_file: public_member_api_docs

import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/domain/entities/photo_entity.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/domain/repositories/i_photo_carousel_repository.dart';

class PhotoCarouselModel extends ElementaryModel {
  final IPhotoCarouselRepository _repository;

  List<PhotoEntity> photos = [];
  int _currentIndex = 0;
  int totalImages = 0;

  PhotoCarouselModel({
    required IPhotoCarouselRepository repository,
    super.errorHandler,
  }) : _repository = repository;

  Future<void> loadPhotos() async {
    photos = await _repository.getPhotos();
    totalImages = photos.length;
  }

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    if (index >= 0 && index < totalImages) {
      _currentIndex = index;
    } else {
      throw RangeError('Index out of range');
    }
  }
}
