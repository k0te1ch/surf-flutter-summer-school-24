// ignore_for_file: public_member_api_docs, library_private_types_in_public_api

import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/screens/photo_grid/photo_grid_wm.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/widgets/main_app_bar.dart';

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
    return Scaffold(
      appBar: MainAppBar(wm: wm),
      body: EntityStateNotifierBuilder<List<String>>(
        listenableEntityState: wm.photosState,
        loadingBuilder: (_, __) =>
            const Center(child: CircularProgressIndicator()),
        errorBuilder: (_, __, ___) =>
            const Center(child: Text('Error loading images')),
        builder: (context, imageList) {
          if (imageList == null || imageList.isEmpty) {
            return const Center(child: Text('No images available'));
          }

          final cachedImages =
              imageList.map(CachedNetworkImageProvider.new).toList();


          return Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: imageList.length,
              cacheExtent: 500,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => wm.onImageTap(),
                  child: KeepAliveWrapper(
                    child: ShimmerLoadingImage(imageUrl: imageList[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ShimmerLoadingImage extends StatelessWidget {
  final String imageUrl;

  const ShimmerLoadingImage({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) =>
            Image(image: imageProvider, fit: BoxFit.cover),
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Theme.of(context).brightness == Brightness.light
              ? Colors.grey[300]!
              : Colors.grey[700]!,
          highlightColor: Theme.of(context).brightness == Brightness.light
              ? Colors.grey[100]!
              : Colors.grey[600]!,
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}

class KeepAliveWrapper extends StatefulWidget {
  final Widget child;

  const KeepAliveWrapper({required this.child, super.key});

  @override
  _KeepAliveWrapperState createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
