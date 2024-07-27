// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/screens/photo_grid/photo_grid_wm.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/widgets/footer_menu.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IPhotoGridWM wm;

  const MainAppBar({required this.wm, super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final logoAsset = isDarkMode ? 'assets/images/logo-light.png' : 'assets/images/logo.png';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          title: Image(
            image: AssetImage(logoAsset),
            width: 180,
            height: 70,
            fit: BoxFit.contain,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              iconSize: 40,
              icon: const Icon(
                Icons.more_vert_outlined,
                size: 40,
              ),
              onPressed: () {
                _showBottomMenu(context);
              },
            ),
            const SizedBox(width: 10),
          ],
        ),
      ],
    );
  }

  void _showBottomMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      elevation: 5,
      builder: (context) {
        return FooterMenu(wm: wm);
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
