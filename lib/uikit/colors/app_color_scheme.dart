import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_color_scheme.tailor.dart';

const _skeletonOpacity = 0.06;

/// App brand color scheme.
///
/// This extension is in sync with base [ThemeData] and [ColorScheme].
///
/// Use case:
///
/// ```dart
/// final colorScheme = AppColorScheme.of(context);
///
/// return Container(color: colorScheme.primary);
/// ```
@immutable
@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class AppColorScheme extends ThemeExtension<AppColorScheme>
    with _$AppColorSchemeTailorMixin {
  /// Base branding color for the app.
  ///
  /// Can be used as an accent color for buttons, switches, labels, icons, etc.
  @override
  final Color primary;

  /// The color of the text on [primary].
  @override
  final Color onPrimary;

  /// Secondary branding color for the app.
  ///
  /// Can be used as an accent color for buttons, switches, labels, icons, etc.
  ///
  /// Complements [primary] color.
  @override
  final Color secondary;

  /// The color of the text on [secondary].
  @override
  final Color onSecondary;

  /// Surface color.
  ///
  /// Usually, the background color of cards, alerts, dialogs, bottom sheets, etc
  /// is considered a surface.
  @override
  final Color surface;

  /// Secondary surface color.
  ///
  /// Usually, the background color of cards, alerts, dialogs, bottom sheets, etc
  /// is considered a surface.
  @override
  final Color surfaceSecondary;

  /// The color of the text on [surface].
  @override
  final Color onSurface;

  /// Background color.
  ///
  /// Usually refers to the general background of the screen.
  @override
  final Color background;

  /// Secondary background color.
  ///
  /// Usually refers to the general background of the screen.
  @override
  final Color backgroundSecondary;

  /// Tertiary background color.
  ///
  /// Usually refers to the general background of the screen.
  @override
  final Color backgroundTertiary;

  /// Tetradic background color.
  ///
  /// Usually refers to the general background of the screen.
  @override
  final Color tetradicBackground;

  /// The color of the text on [background].
  @override
  final Color onBackground;

  /// The color of the text on [background]. Muted version.
  @override
  final Color onBackgroundSecondary;

  /// Color of danger.
  ///
  /// Commonly used to display errors.
  ///
  /// Can be used as an accent color for text/background of an error message/destructive button.
  @override
  final Color danger;

  /// Secondary color of danger.
  ///
  /// Commonly used to display errors.
  ///
  /// Can be used as an accent color for text/background of an error message/destructive button.
  @override
  final Color dangerSecondary;

  /// The color of the text on [danger].
  @override
  final Color onDanger;

  /// Color of text in text field.
  @override
  final Color textField;

  /// Color of label in text field.
  @override
  final Color textFieldLabel;

  /// Color of helper text in text field.
  @override
  final Color textFieldHelper;

  /// Color of border and cursor in text field.
  @override
  final Color frameTextFieldSecondary;

  /// Color of inactive elements.
  @override
  final Color inactive;

  /// Positive color.
  ///
  /// Typically used for informational success messages.
  @override
  final Color positive;

  /// The color of the text on [positive].
  @override
  final Color onPositive;

  /// Primary skeleton color.
  @override
  final Color skeletonPrimary;

  /// The color of the text on [skeletonPrimary].
  @override
  final Color skeletonOnPrimary;

  /// Secondary skeleton color.
  @override
  final Color skeletonSecondary;

  /// Tertiary skeleton color.
  @override
  final Color skeletonTertiary;

  /// The color of the shimmer.
  @override
  final Color shimmer;

  /// The color of the shimmer base.
  @override
  final Color shimmerBase;

  /// The color of the shimmer highlight.
  @override
  final Color shimmerHighlight;

  /// @nodoc
  const AppColorScheme({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.surface,
    required this.surfaceSecondary,
    required this.onSurface,
    required this.background,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
    required this.onBackground,
    required this.onBackgroundSecondary,
    required this.danger,
    required this.dangerSecondary,
    required this.onDanger,
    required this.textField,
    required this.textFieldLabel,
    required this.textFieldHelper,
    required this.frameTextFieldSecondary,
    required this.inactive,
    required this.positive,
    required this.onPositive,
    required this.skeletonPrimary,
    required this.skeletonOnPrimary,
    required this.skeletonSecondary,
    required this.skeletonTertiary,
    required this.tetradicBackground,
    required this.shimmer,
    required this.shimmerBase,
    required this.shimmerHighlight,
  });

  /// Base light theme version.
  AppColorScheme.light()
      : primary = const Color(0xFF000000),
        onPrimary = const Color(0xFFFFFFFF),
        secondary = const Color(0xFFBEFF3D),
        onSecondary = const Color(0xFF171717),
        surface = const Color(0xFFFFFFFF),
        surfaceSecondary = const Color(0xFFFFFFFF),
        onSurface = const Color(0xFF171717),
        background = const Color(0xFFFFFFFF),
        backgroundSecondary = const Color(0xFF7B0008),
        backgroundTertiary = const Color(0xFFFFFFFF),
        onBackground = const Color(0xFF171717),
        onBackgroundSecondary = const Color(0xFFFFFFFF),
        danger = const Color(0xFFFF004D),
        dangerSecondary = const Color(0xFFFF176B),
        onDanger = const Color(0xFFFFFFFF),
        textField = const Color(0xFF171717),
        textFieldLabel = const Color(0xFF000000),
        textFieldHelper = const Color(0xFF000000),
        frameTextFieldSecondary = const Color(0xFF171717),
        inactive = const Color(0xFF000000),
        positive = const Color(0xFF80E7FF),
        onPositive = const Color(0xFFFFFFFF),
        skeletonPrimary = Colors.black.withOpacity(_skeletonOpacity),
        skeletonOnPrimary = const Color(0xFFFFFFFF),
        skeletonSecondary = const Color(0xFFFFFFFF),
        skeletonTertiary = const Color(0xFFFFFFFF),
        tetradicBackground = const Color(0xFFB5CCAE),
        shimmer = const Color(0xFFE7E4E0),
        shimmerBase = const Color(0xFFE0E0E0),
        shimmerHighlight = const Color(0xFF616161);

  /// Base dark theme version.
  AppColorScheme.dark()
      : primary = const Color(0xFFFFFFFF),
        onPrimary = const Color(0xFF222222),
        secondary = const Color(0xFFC6FF57),
        onSecondary = const Color(0xFF000000),
        surface = const Color(0xFF222222),
        surfaceSecondary = const Color(0xFF222222),
        onSurface = const Color(0xFFFFFFFF),
        background = const Color(0xFF222222),
        backgroundSecondary = const Color(0xFF7B0008),
        backgroundTertiary = const Color(0xFF222222),
        onBackground = const Color(0xFFFFFFFF),
        onBackgroundSecondary = const Color(0xFFFFFFFF),
        danger = const Color(0xFFFF607D),
        dangerSecondary = const Color(0xFFFF79A8),
        onDanger = const Color(0xFFFFFFFF),
        textField = const Color(0xFFD6D6D6),
        textFieldLabel = const Color(0xFFFFFFFF),
        textFieldHelper = const Color(0xFF000000),
        frameTextFieldSecondary = const Color(0xFFD6D6D6),
        inactive = const Color(0xFF000000),
        positive = const Color(0xff247487),
        onPositive = const Color(0xFFFFFFFF),
        skeletonPrimary = Colors.black.withOpacity(_skeletonOpacity),
        skeletonOnPrimary = const Color(0xFFFFFFFF),
        skeletonSecondary = const Color(0xFF222222),
        skeletonTertiary = const Color(0xFFD6D6D6),
        tetradicBackground = const Color(0xFF9CD29C),
        shimmer = const Color(0xFFE7E4E0),
        shimmerBase = const Color(0xFFF5F5F5),
        shimmerHighlight = const Color(0xFF616161);

  @override
  AppColorScheme copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? surface,
    Color? surfaceSecondary,
    Color? onSurface,
    Color? background,
    Color? backgroundSecondary,
    Color? backgroundTertiary,
    Color? tetradicBackground,
    Color? onBackground,
    Color? onBackgroundSecondary,
    Color? danger,
    Color? dangerSecondary,
    Color? onDanger,
    Color? textField,
    Color? textFieldLabel,
    Color? textFieldHelper,
    Color? frameTextFieldSecondary,
    Color? inactive,
    Color? positive,
    Color? onPositive,
    Color? skeletonPrimary,
    Color? skeletonOnPrimary,
    Color? skeletonSecondary,
    Color? skeletonTertiary,
    Color? shimmer,
    Color? shimmerBase,
    Color? shimmerHighlight,
  }) {
    return AppColorScheme(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      surface: surface ?? this.surface,
      surfaceSecondary: surfaceSecondary ?? this.surfaceSecondary,
      onSurface: onSurface ?? this.onSurface,
      background: background ?? this.background,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      backgroundTertiary: backgroundTertiary ?? this.backgroundTertiary,
      tetradicBackground: tetradicBackground ?? this.tetradicBackground,
      onBackground: onBackground ?? this.onBackground,
      onBackgroundSecondary:
          onBackgroundSecondary ?? this.onBackgroundSecondary,
      danger: danger ?? this.danger,
      dangerSecondary: dangerSecondary ?? this.dangerSecondary,
      onDanger: onDanger ?? this.onDanger,
      textField: textField ?? this.textField,
      textFieldLabel: textFieldLabel ?? this.textFieldLabel,
      textFieldHelper: textFieldHelper ?? this.textFieldHelper,
      frameTextFieldSecondary:
          frameTextFieldSecondary ?? this.frameTextFieldSecondary,
      inactive: inactive ?? this.inactive,
      positive: positive ?? this.positive,
      onPositive: onPositive ?? this.onPositive,
      skeletonPrimary: skeletonPrimary ?? this.skeletonPrimary,
      skeletonOnPrimary: skeletonOnPrimary ?? this.skeletonOnPrimary,
      skeletonSecondary: skeletonSecondary ?? this.skeletonSecondary,
      skeletonTertiary: skeletonTertiary ?? this.skeletonTertiary,
      shimmer: shimmer ?? this.shimmer,
      shimmerBase: shimmerBase ?? this.shimmerBase,
      shimmerHighlight: shimmerHighlight ?? this.shimmerHighlight,
    );
  }

  @override
  AppColorScheme lerp(ThemeExtension<AppColorScheme>? other, double t) {
    if (other is! AppColorScheme) return this;

    return AppColorScheme(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceSecondary:
          Color.lerp(surfaceSecondary, other.surfaceSecondary, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      background: Color.lerp(background, other.background, t)!,
      backgroundSecondary:
          Color.lerp(backgroundSecondary, other.backgroundSecondary, t)!,
      backgroundTertiary:
          Color.lerp(backgroundTertiary, other.backgroundTertiary, t)!,
      tetradicBackground:
          Color.lerp(tetradicBackground, other.tetradicBackground, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      onBackgroundSecondary:
          Color.lerp(onBackgroundSecondary, other.onBackgroundSecondary, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      dangerSecondary: Color.lerp(dangerSecondary, other.dangerSecondary, t)!,
      onDanger: Color.lerp(onDanger, other.onDanger, t)!,
      textField: Color.lerp(textField, other.textField, t)!,
      textFieldLabel: Color.lerp(textFieldLabel, other.textFieldLabel, t)!,
      textFieldHelper: Color.lerp(textFieldHelper, other.textFieldHelper, t)!,
      frameTextFieldSecondary: Color.lerp(
          frameTextFieldSecondary, other.frameTextFieldSecondary, t)!,
      inactive: Color.lerp(inactive, other.inactive, t)!,
      positive: Color.lerp(positive, other.positive, t)!,
      onPositive: Color.lerp(onPositive, other.onPositive, t)!,
      skeletonPrimary: Color.lerp(skeletonPrimary, other.skeletonPrimary, t)!,
      skeletonOnPrimary:
          Color.lerp(skeletonOnPrimary, other.skeletonOnPrimary, t)!,
      skeletonSecondary:
          Color.lerp(skeletonSecondary, other.skeletonSecondary, t)!,
      skeletonTertiary:
          Color.lerp(skeletonTertiary, other.skeletonTertiary, t)!,
      shimmer: Color.lerp(shimmer, other.shimmer, t)!,
      shimmerBase: Color.lerp(shimmerBase, other.shimmerBase, t)!,
      shimmerHighlight:
          Color.lerp(shimmerHighlight, other.shimmerHighlight, t)!,
    );
  }
}
