import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/common/mixin/theme_wm_mixin.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/di/photo_grid_scope.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/screens/photo_grid/photo_grid_model.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/screens/photo_grid/photo_grid_screen.dart';

/// DI factory for [PhotoGridWM].
PhotoGridWM defaultPhotoGridWMFactory(BuildContext context) {
  final scope = context.read<IPhotoGridScope>();

  return PhotoGridWM(PhotoGridModel(repository: scope.repository));
}

/// Interface for [PhotoGridWM].
abstract interface class IPhotoGridWM with ThemeIModelMixin implements IWidgetModel {}

/// {@template photo_grid_wm.class}
/// [WidgetModel] for [PhotoGridScreen].
/// {@endtemplate}
final class PhotoGridWM extends WidgetModel<PhotoGridScreen, PhotoGridModel> with ThemeWMMixin implements IPhotoGridWM {
  /// {@macro photo_grid_wm.class}
  PhotoGridWM(super._model);
}
