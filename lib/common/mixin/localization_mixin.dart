// ignore_for_file: avoid-non-null-assertion

import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/l10n/app_localizations.g.dart';

/// Mixin for widget model which provides localization.
mixin LocalizationMixin<W extends ElementaryWidget, M extends ElementaryModel> on WidgetModel<W, M>
    implements ILocalizationMixin {
  @override
  AppLocalizations get l10n => AppLocalizations.of(context)!;
}

/// Mixin for widget model which provides localization.
mixin ILocalizationMixin implements IWidgetModel {
  /// Localizations instance.
  AppLocalizations get l10n;
}
