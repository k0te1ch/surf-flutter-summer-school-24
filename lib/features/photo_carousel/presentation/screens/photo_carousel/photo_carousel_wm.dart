// ignore_for_file: public_member_api_docs

import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/common/mixin/theme_wm_mixin.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/di/photo_carousel_scope.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/domain/entities/photo_entity.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/presentation/screens/photo_carousel/photo_carousel_model.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/presentation/screens/photo_carousel/photo_carousel_screen.dart';

/// DI factory for [PhotoCarouselWM].
PhotoCarouselWM defaultPhotoCarouselWMFactory(BuildContext context) {
  final scope = context.read<IPhotoCarouselScope>();
  return PhotoCarouselWM(PhotoCarouselModel(repository: scope.repository));
}

/// Interface for [PhotoCarouselWM].
abstract interface class IPhotoCarouselWM with ThemeIModelMixin implements IWidgetModel {
  ValueNotifier<int> get currentIndexNotifier;
  ValueNotifier<int> get totalImagesNotifier;

  Future<void> getPhotos();
  void onBackPressed();
  List<PhotoEntity> get photos;
  int get currentIndex;
  set currentIndex(int index);
  int get totalImages;
}

/// {@template photo_carousel_wm.class}
/// [WidgetModel] for [PhotoCarouselScreen].
/// {@endtemplate}
final class PhotoCarouselWM extends WidgetModel<PhotoCarouselScreen, PhotoCarouselModel>
    with ThemeWMMixin
    implements IPhotoCarouselWM {
  /// {@macro photo_carousel_wm.class}
  PhotoCarouselWM(super._model);

  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier(0);
  final ValueNotifier<int> _totalImagesNotifier = ValueNotifier(0);

  @override
  ValueNotifier<int> get currentIndexNotifier => _currentIndexNotifier;
  @override
  ValueNotifier<int> get totalImagesNotifier => _totalImagesNotifier;

  /// Load photos from the model.
  @override
  Future<void> getPhotos() async {
    await model.loadPhotos();
    _totalImagesNotifier.value = model.totalImages;
  }

  /// Get and set the current index of the carousel.
  @override
  int get currentIndex => model.currentIndex;

  @override
  set currentIndex(int value) {
    model.currentIndex = value;
    _currentIndexNotifier.value = value;
  }

  @override
  void onBackPressed() {
    Navigator.of(context).pop();
  }

  /// Get the list of photos.
  @override
  List<PhotoEntity> get photos => model.photos;

  /// Get the total of images.
  @override
  int get totalImages => model.totalImages;
}
