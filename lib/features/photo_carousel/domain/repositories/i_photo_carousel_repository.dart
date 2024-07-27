import 'package:surf_flutter_summer_school_24/features/photo_carousel/data/repositories/photo_carousel_repository.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/domain/entities/photo_entity.dart';

/// Interface for [PhotoCarouselRepository].
/// This repository is used to fetch photo data for the carousel.
abstract interface class IPhotoCarouselRepository {
  /// Fetches a list of photos.
  Future<List<PhotoEntity>> getPhotos();
}
