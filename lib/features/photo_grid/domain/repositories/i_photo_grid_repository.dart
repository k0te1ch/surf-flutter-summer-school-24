import 'package:surf_flutter_summer_school_24/features/photo_grid/data/repositories/photo_grid_repository.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/domain/entities/photo_entity.dart';

/// Interface for [PhotoGridRepository].
/// This repository is used to fetch photo data for the carousel.
abstract interface class IPhotoGridRepository {
  /// Fetches a list of photos.
  Future<List<PhotoEntity>> getPhotos();
}
