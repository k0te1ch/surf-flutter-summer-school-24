// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/screens/photo_grid/photo_grid_wm.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/widgets/error.dart';
import 'package:surf_flutter_summer_school_24/uikit/text/app_text_scheme.dart';

class FooterMenu extends StatelessWidget {
  final IPhotoGridWM wm;
  const FooterMenu({required this.wm, super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final currentTheme = isDarkMode ? 'Тёмная' : 'Светлая';

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const _DragHandle(),
            _ThemeTile(currentTheme: currentTheme, wm: wm),
            const _UploadPhotoTile(),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class _DragHandle extends StatelessWidget {
  const _DragHandle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 4,
        width: 50,
        margin: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}

class _ThemeTile extends StatelessWidget {
  final String currentTheme;
  final IPhotoGridWM wm;

  const _ThemeTile({required this.currentTheme, required this.wm, });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      leading: const Icon(Icons.light_mode_outlined, size: 28),
      title: Text(
        'Тема',
        style: context.appTextScheme.display.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Text(
        currentTheme,
        style: context.appTextScheme.display,
      ),
      onTap: wm.onSetThemeMode,
    );
  }
}

class _UploadPhotoTile extends StatelessWidget {
  const _UploadPhotoTile();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      leading: const Icon(Icons.cloud_upload_outlined, size: 28),
      title: Text(
        'Загрузить фото',
        style: context.appTextScheme.display.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ErrorScreen()),
        );
      },
    );
  }
}
