import 'package:flutter/material.dart';
import 'package:flutter_easy_dialogs/flutter_easy_dialogs.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/features/navigation/app_router.dart';
import 'package:surf_flutter_summer_school_24/features/snack_queue/presentation/snack_queue_provider.dart';
import 'package:surf_flutter_summer_school_24/features/theme_mode/presentation/widgets/theme_mode_builder.dart';
import 'package:surf_flutter_summer_school_24/l10n/app_localizations.g.dart';
import 'package:surf_flutter_summer_school_24/uikit/themes/app_theme_data.dart';

/// {@template app.class}
/// Application.
/// {@endtemplate}
class App extends StatefulWidget {
  /// {@macro app.class}
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();

    _appRouter = context.read<AppRouter>();
  }

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeModeBuilder(
      builder: (_, themeMode) {
        return MaterialApp.router(
          /// Navigation.
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
          theme: AppThemeData.lightTheme,
          darkTheme: AppThemeData.darkTheme,
          themeMode: themeMode,

          /// For snack and dialogs.
          builder: (builderContext, widget) {
            final mediaQueryData = MediaQuery.of(builderContext);
            final easyDialogsBuilder = FlutterEasyDialogs.builder();

            return Nested(
              children: const [
                SnackQueueProvider(),
              ],
              child: MediaQuery(
                data: mediaQueryData.copyWith(textScaler: TextScaler.noScaling),
                child: Overlay(
                  initialEntries: [
                    OverlayEntry(
                      builder: (overlayContext) => easyDialogsBuilder(overlayContext, widget),
                    ),
                  ],
                ),
              ),
            );
          },

          /// Localization.
          locale: _localizations.firstOrNull,
          localizationsDelegates: _localizationsDelegates,
          supportedLocales: _localizations,
        );
      },
    );
  }
}

const _localizations = [
  Locale('en', 'EN'),
  Locale('ru', 'RU'),
];

const _localizationsDelegates = [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
