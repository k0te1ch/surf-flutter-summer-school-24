// ignore_for_file: avoid-ignoring-return-values

import 'dart:async';


import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:surf_flutter_summer_school_24/config/environment/environment.dart';
import 'package:surf_flutter_summer_school_24/features/app/app_flow.dart';
import 'package:surf_flutter_summer_school_24/features/app/di/app_scope_register.dart';

/// App launch.
Future<void> run(Environment env) async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await _runApp(env);
}

Future<void> _runApp(Environment env) async {
  const scopeRegister = AppScopeRegister();
  final scope = await scopeRegister.createScope(env);

  runApp(AppFlow(appScope: scope));
}
