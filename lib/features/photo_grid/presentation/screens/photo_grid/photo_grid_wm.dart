// ignore_for_file: public_member_api_docs

import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/common/mixin/theme_wm_mixin.dart';
import 'package:surf_flutter_summer_school_24/features/navigation/app_router.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/di/photo_grid_scope.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/screens/photo_grid/photo_grid_model.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/screens/photo_grid/photo_grid_screen.dart';
import 'package:surf_flutter_summer_school_24/features/theme_mode/presentation/theme_mode_provider.dart';

/// DI factory for [PhotoGridWM].
PhotoGridWM defaultPhotoGridWMFactory(BuildContext context) {
  final scope = context.read<IPhotoGridScope>();
  final appRouter = context.read<AppRouter>();
  return PhotoGridWM(
    PhotoGridModel(repository: scope.repository),
    router: appRouter,
  );
}

/// Interface for [PhotoGridWM].
abstract interface class IPhotoGridWM
    with ThemeIModelMixin
    implements IWidgetModel {
  EntityStateNotifier<List<String>> get photosState;
  void onImageTap();
  void onSetThemeMode();
}

/// {@template photo_grid_wm.class}
/// [WidgetModel] for [PhotoGridScreen].
/// {@endtemplate}
final class PhotoGridWM extends WidgetModel<PhotoGridScreen, PhotoGridModel>
    with ThemeWMMixin
    implements IPhotoGridWM {
  final AppRouter _router;
  final _photosState = EntityStateNotifier<List<String>>();

  /// {@macro photo_grid_wm.class}
  PhotoGridWM(super._model, {required AppRouter router}) : _router = router;

  @override
  EntityStateNotifier<List<String>> get photosState => _photosState;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _loadPhotos();
  }

  Future<void> _loadPhotos() async {
    _photosState.loading();
    try {
      final photos = await model.loadPhotos();
      final imageUrls = photos.map((photo) => photo.imageUrl).toList();
      _photosState.content(imageUrls);
    } on Exception catch (e) {
      _photosState.error(e);
    }
  }

  @override
  void onImageTap() {
    _router.push(const PhotoCarouselRoute());
  }

  @override
  Future<void> onSetThemeMode() async {
    await ThemeModeProvider.of(context).switchThemeMode();
  }
}
