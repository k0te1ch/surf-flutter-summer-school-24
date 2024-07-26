import 'package:surf_flutter_summer_school_24/common/utils/disposable_object/disposable_object.dart';
import 'package:surf_flutter_summer_school_24/common/utils/disposable_object/i_disposable_object.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/data/repositories/photo_grid_repository.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/domain/repositories/i_photo_grid_repository.dart';

/// {@template photo_grid_scope.class}
/// Implementation of [IPhotoGridScope].
/// {@endtemplate}
final class PhotoGridScope extends DisposableObject implements IPhotoGridScope {
  @override
  late final IPhotoGridRepository repository;

  /// Factory constructor for [IPhotoGridScope].
  factory PhotoGridScope.create() {
    return PhotoGridScope(const PhotoGridRepository());
  }

  /// {@macro photo_grid_scope.class}
  PhotoGridScope(this.repository);
}

/// Scope dependencies of the PhotoGrid feature.
abstract interface class IPhotoGridScope implements IDisposableObject {
  /// PhotoGridRepository.
  IPhotoGridRepository get repository;
}
