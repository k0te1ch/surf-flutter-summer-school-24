// ignore_for_file: public_member_api_docs

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/presentation/screens/photo_carousel/photo_carousel_wm.dart';
import 'package:surf_flutter_summer_school_24/common/utils/extentions/context_x.dart';

class PhotoCarousel extends StatefulWidget {
  final List<CachedNetworkImageProvider> imageProviders;
  final IPhotoCarouselWM wm;
  final int currentIndex;
  final ValueChanged<int> onPageChanged;

  const PhotoCarousel({
    required this.wm,
    required this.imageProviders,
    required this.currentIndex,
    required this.onPageChanged,
    super.key,
  });

  @override
  _PhotoCarouselState createState() => _PhotoCarouselState();
}

class _PhotoCarouselState extends State<PhotoCarousel> {
  late PageController _pageController;
  final double _viewportFraction = 0.75;
  final double _margin = 8.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: widget.wm.currentIndex,
      viewportFraction: _viewportFraction,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(PhotoCarousel oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.wm.currentIndex != oldWidget.wm.currentIndex) {
      _pageController.animateToPage(
        widget.wm.currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.wm.photos.length,
        onPageChanged: (index) {
          widget.wm.currentIndex = index;
        },
        itemBuilder: (context, index) {
          return CarouselItem(
            imageProvider: CachedNetworkImageProvider(widget.wm.photos[index].imageUrl),
            isCurrentIndex: index == widget.wm.currentIndex,
            pageController: _pageController,
            index: index,
            margin: _margin,
            wm: widget.wm,
          );
        },
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  final CachedNetworkImageProvider imageProvider;
  final bool isCurrentIndex;
  final PageController pageController;
  final int index;
  final double margin;
  final IPhotoCarouselWM wm;

  const CarouselItem({
    required this.imageProvider,
    required this.isCurrentIndex,
    required this.pageController,
    required this.index,
    required this.margin,
    required this.wm,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScaledImageItem(
      imageProvider: imageProvider,
      isCurrentIndex: isCurrentIndex,
      pageController: pageController,
      index: index,
      margin: margin,
      wm: wm,
    );
  }
}

class ScaledImageItem extends StatelessWidget {
  final CachedNetworkImageProvider imageProvider;
  final bool isCurrentIndex;
  final PageController pageController;
  final int index;
  final double margin;
  final IPhotoCarouselWM wm;

  const ScaledImageItem({
    required this.imageProvider,
    required this.isCurrentIndex,
    required this.pageController,
    required this.index,
    required this.margin,
    required this.wm,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        var scale = 1.0;
        if (pageController.position.haveDimensions) {
          final pageOffset = pageController.page ?? pageController.initialPage.toDouble();
          scale = (1 - (pageOffset - index).abs() * 0.2).clamp(0.8, 1.0);
        }
        return Transform.scale(
          scale: scale,
          child: child,
        );
      },
      child: ImageContainer(
        imageProvider: imageProvider,
        isCurrentIndex: isCurrentIndex,
        margin: margin,
        wm: wm,
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final CachedNetworkImageProvider imageProvider;
  final bool isCurrentIndex;
  final double margin;
  final IPhotoCarouselWM wm;

  const ImageContainer({
    required this.imageProvider,
    required this.isCurrentIndex,
    required this.margin,
    required this.wm,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: margin, right: margin, top: 56, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: imageProvider,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Stack(
                fit: StackFit.expand,
                children: [
                  ColoredBox(
                    color: context.themeStyles.colorScheme.onSecondary,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error,
                            size: 60,
                            color: context.themeStyles.colorScheme.onPrimary,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Ошибка загрузки изображения',
                            style: context.textStyles.display.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: context.themeStyles.colorScheme.onPrimary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (!isCurrentIndex && imageProvider.errorListener == null)
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3),
                child: Container(),
              ),
          ],
        ),
      ),
    );
  }
}
