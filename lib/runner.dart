// ignore_for_file: avoid-ignoring-return-values

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:surf_flutter_summer_school_24/config/environment/environment.dart';
import 'package:surf_flutter_summer_school_24/features/app/app_flow.dart';
import 'package:surf_flutter_summer_school_24/features/app/di/app_scope_register.dart';

/// App launch.
Future<void> run(Environment env) async {
  WidgetsFlutterBinding.ensureInitialized();

  final fbOptions = env.firebaseOptions;

  if (fbOptions != null) {
    await Firebase.initializeApp(options: fbOptions);
  }

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await _runApp(env);
}

Future<void> _runApp(Environment env) async {
  const scopeRegister = AppScopeRegister();
  final scope = await scopeRegister.createScope(env);

  runApp(AppFlow(appScope: scope));
}

// ignore: unused_element
void _setupCrashlytics() {
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true).ignore();

    return true;
  };
}
