// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/presentation/screens/photo_carousel/photo_carousel_wm.dart';
import 'package:surf_flutter_summer_school_24/common/utils/extentions/context_x.dart';

class PhotoCarouselAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IPhotoCarouselWM wm;
  final VoidCallback? onBackPressed;

  const PhotoCarouselAppBar({
    required this.wm,
    super.key,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(
        DateFormat('dd.MM.yyyy').format(DateTime.now()),
        style: context.textStyles.headline.copyWith(
          fontWeight: FontWeight.w300,
        ),
      ),
      leading: onBackPressed != null
          ? Center(
              child: SizedBox(
                width: 60,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: onBackPressed,
                ),
              ),
            )
          : null,
      actions: [
        ValueListenableBuilder<int>(
          valueListenable: wm.currentIndexNotifier,
          builder: (context, currentIndex, child) {
            return ValueListenableBuilder<int>(
              valueListenable: wm.totalImagesNotifier,
              builder: (context, totalImages, child) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${currentIndex + 1}',
                            style: context.textStyles.label.copyWith(
                              color: context.themeStyles.colorScheme.primary,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: '/$totalImages',
                            style: context.textStyles.label.copyWith(
                              color: context.themeStyles.colorScheme.primary,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
