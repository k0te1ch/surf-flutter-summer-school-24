import 'package:surf_flutter_summer_school_24/api/service/photo/photo_api.dart';
import 'package:surf_flutter_summer_school_24/common/utils/disposable_object/disposable_object.dart';
import 'package:surf_flutter_summer_school_24/common/utils/disposable_object/i_disposable_object.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/data/repositories/photo_carousel_repository.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/domain/repositories/i_photo_carousel_repository.dart';
import 'package:surf_flutter_summer_school_24/api/app_dio_configurator.dart';

/// {@template photo_carousel_scope.class}
/// Implementation of [IPhotoCarouselScope].
/// {@endtemplate}
final class PhotoCarouselScope extends DisposableObject
    implements IPhotoCarouselScope {
  @override
  late final IPhotoCarouselRepository repository;

  /// Factory constructor for [IPhotoCarouselScope].
  factory PhotoCarouselScope.create() {
    const dioConfigurator = AppDioConfigurator();
    final dio = dioConfigurator.create(
      interceptors: [],
      url: 'https://cloud-api.yandex.net',
    );

    final photoApi = PhotoApi(dio);
    final repository = PhotoCarouselRepository(photoApi,
        // TODO(init-project): Токен
        'TOKEN_HERE');
    return PhotoCarouselScope(repository);
  }

  /// {@macro photo_carousel_scope.class}
  PhotoCarouselScope(this.repository);
}

/// Scope dependencies of the PhotoCarousel feature.
abstract interface class IPhotoCarouselScope implements IDisposableObject {
  /// PhotoCarouselRepository.
  IPhotoCarouselRepository get repository;
}
