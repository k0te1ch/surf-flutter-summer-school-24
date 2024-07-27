import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/uikit/text/app_text_scheme.dart';

extension ContextX on BuildContext {
  AppTextScheme get textStyles => AppTextScheme.of(this);
  ThemeData get themeStyles => Theme.of(this);
}
