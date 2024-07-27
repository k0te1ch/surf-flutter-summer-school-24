// ignore_for_file: avoid-non-null-assertion

import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/l10n/app_localizations.g.dart';

/// Extension for working with localization.
extension AppLocalizationsX on BuildContext {
  /// Getter for strings.
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
