import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/features/theme_mode/domain/repositories/i_theme_mode_repository.dart';
import 'package:surf_flutter_summer_school_24/persistence/storage/theme_storage/i_theme_mode_storage.dart';

/// {@template theme_repository.class}
/// Implementation of [IThemeModeRepository].
/// {@endtemplate}
final class ThemeModeRepository implements IThemeModeRepository {
  final IThemeModeStorage _themeModeStorage;

  /// {@macro theme_repository.class}
  ThemeModeRepository({
    required IThemeModeStorage themeModeStorage,
  }) : _themeModeStorage = themeModeStorage;

  @override
  Future<void> setThemeMode(ThemeMode newThemeMode) async {
    await _themeModeStorage.saveThemeMode(mode: newThemeMode);
  }

  @override
  ThemeMode? getThemeMode() {
    return _themeModeStorage.getThemeMode();
  }
}
