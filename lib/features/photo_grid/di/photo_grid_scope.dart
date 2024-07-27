import 'package:surf_flutter_summer_school_24/api/app_dio_configurator.dart';
import 'package:surf_flutter_summer_school_24/api/service/photo/photo_api.dart';
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
    const dioConfigurator = AppDioConfigurator();
    final dio = dioConfigurator.create(
      interceptors: [],
      url: 'https://cloud-api.yandex.net',
    );

    final photoApi = PhotoApi(dio);
    final repository = PhotoGridRepository(photoApi,
    // TODO(init-project): Токен
        'TOKEN_HERE');
    return PhotoGridScope(repository);
  }

  /// {@macro photo_grid_scope.class}
  PhotoGridScope(this.repository);
}

/// Scope dependencies of the PhotoGrid feature.
abstract interface class IPhotoGridScope implements IDisposableObject {
  /// PhotoGridRepository.
  IPhotoGridRepository get repository;
}
