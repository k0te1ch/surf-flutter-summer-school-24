// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/uikit/colors/app_color_scheme.dart';
import 'package:surf_flutter_summer_school_24/uikit/text/app_text_scheme.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ActionButton({
    required this.text, required this.onPressed, super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        backgroundColor: context.appColorScheme.surface,
      ),
      child: Text(
        text,
        style: context.appTextScheme.label.copyWith(
          fontWeight: FontWeight.w400,
          color: context.appColorScheme.onSurface,
        ),
      ),
    );
  }
}
