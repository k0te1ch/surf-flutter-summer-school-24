import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/features/theme_mode/presentation/theme_mode_controller.dart';
import 'package:surf_flutter_summer_school_24/features/theme_mode/presentation/theme_mode_wm.dart';

/// {@template theme_widget.class}
/// ThemeWidget is a widget that provides the [IThemeModeWM] to its descendants.
/// {@endtemplate}
class ThemeModeWidget extends ElementaryWidget<IThemeModeWM> {
  /// {@macro theme_widget.class}
  const ThemeModeWidget({
    required this.child,
    super.key,
    WidgetModelFactory wmFactory = defaultThemeWMFactory,
  }) : super(wmFactory);

  /// Child.
  final Widget child;

  @override
  Widget build(IThemeModeWM wm) {
    return Provider<ThemeModeController>.value(
      value: wm,
      child: child,
    );
  }
}
