import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/presentation/screens/photo_carousel/photo_carousel_wm.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/presentation/widgets/photo_carousel.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/presentation/widgets/photo_carousel_app_bar.dart';

/// {@template photo_carousel_screen.class}
/// PhotoCarouselScreen.
/// {@endtemplate}
class PhotoCarouselScreen extends ElementaryWidget<IPhotoCarouselWM> {
  /// {@macro photo_carousel_screen.class}
  const PhotoCarouselScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultPhotoCarouselWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IPhotoCarouselWM wm) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: PhotoCarouselAppBar(
          onBackPressed: wm.onBackPressed,
          wm: wm,
        ),
      ),
      body: FutureBuilder(
        future: wm.getPhotos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // Используем ValueListenableBuilder для отслеживания изменений в currentIndex и totalImages
          return ValueListenableBuilder<int>(
            valueListenable: wm.currentIndexNotifier,
            builder: (context, currentIndex, child) {
              return ValueListenableBuilder<int>(
                valueListenable: wm.totalImagesNotifier,
                builder: (context, totalImages, child) {
                  return PhotoCarousel(
                    wm: wm,
                    imageProviders: wm.photos.map((photo) => CachedNetworkImageProvider(photo.imageUrl)).toList(),
                    currentIndex: currentIndex, // Используем currentIndex из ValueListenableBuilder
                    onPageChanged: (index) {
                      wm.currentIndex = index; // Обновляем индекс
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
