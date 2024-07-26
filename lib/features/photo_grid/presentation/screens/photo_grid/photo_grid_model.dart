import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/domain/repositories/i_photo_grid_repository.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/screens/photo_grid/photo_grid_screen.dart';

/// {@template photo_grid_model.class}
/// [ElementaryModel] for [PhotoGridScreen].
/// {@endtemplate}
final class PhotoGridModel extends ElementaryModel {
  // ignore: unused_field
  final IPhotoGridRepository _repository;

  /// {@macro photo_grid_model.class}
  PhotoGridModel({
    required IPhotoGridRepository repository,
    super.errorHandler,
  }) : _repository = repository;
}
