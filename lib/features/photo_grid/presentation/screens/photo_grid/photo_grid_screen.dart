import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/screens/photo_grid/photo_grid_wm.dart';

/// {@template photo_grid_screen.class}
/// PhotoGridScreen.
/// {@endtemplate}
class PhotoGridScreen extends ElementaryWidget<IPhotoGridWM> {
  /// {@macro photo_grid_screen.class}
  const PhotoGridScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultPhotoGridWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IPhotoGridWM wm) {
    return const Placeholder();
  }
}
