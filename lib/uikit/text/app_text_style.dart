//ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/uikit/app_sizes.dart';

const _double57 = 57.0;
const _double45 = 45.0;
const _double36 = 36.0;
const _double32 = 32.0;
const _double28 = 28.0;
const _double24 = 24.0;
const _double22 = 22.0;
const _double11 = 11.0;

/// App text style.
enum AppTextStyle {
  displayLarge(TextStyle(fontFamily: 'Roboto', fontSize: _double57, height: 57 / 64)),
  displayMedium(TextStyle(fontFamily: 'Roboto', fontSize: _double45, height: 45 / 52)),
  displaySmall(TextStyle(fontFamily: 'Roboto', fontSize: _double36, height: 36 / 44)),
  headlineLarge(TextStyle(fontFamily: 'Roboto', fontSize: _double32, height: 32 / 40)),
  headlineMedium(TextStyle(fontFamily: 'Roboto', fontSize: _double28, height: 28 / 36)),
  headlineSmall(TextStyle(fontFamily: 'Roboto', fontSize: _double24, height: 24 / 32)),
  titleLarge(TextStyle(fontFamily: 'Roboto', fontSize: _double22, height: 22 / 28)),
  titleMedium(
    TextStyle(
      fontFamily: 'Roboto',
      fontSize: AppSizes.double16,
      fontWeight: FontWeight.w500,
      height: 16 / 24,
    ),
  ),
  titleSmall(
    TextStyle(
      fontFamily: 'Roboto',
      fontSize: AppSizes.double14,
      fontWeight: FontWeight.w500,
      height: 14 / 20,
    ),
  ),
  labelLarge(
    TextStyle(
      fontFamily: 'Roboto',
      fontSize: AppSizes.double14,
      fontWeight: FontWeight.w500,
      height: 14 / 20,
    ),
  ),
  labelMedium(
    TextStyle(
      fontFamily: 'Roboto',
      fontSize: AppSizes.double12,
      fontWeight: FontWeight.w500,
      height: 12 / 16,
    ),
  ),
  labelSmall(
    TextStyle(
      fontFamily: 'Roboto',
      fontSize: _double11,
      fontWeight: FontWeight.w500,
      height: 11 / 16,
    ),
  ),
  bodyLarge(TextStyle(fontFamily: 'Roboto', fontSize: AppSizes.double16, height: 16 / 24)),
  bodyMedium(TextStyle(fontFamily: 'Roboto', fontSize: AppSizes.double14, height: 14 / 20)),
  bodySmall(TextStyle(fontFamily: 'Roboto', fontSize: AppSizes.double12, height: 12 / 16));

  final TextStyle value;

  const AppTextStyle(this.value);
}
