import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/common/utils/disposable_object/disposable_object.dart';
import 'package:surf_flutter_summer_school_24/common/utils/disposable_object/i_disposable_object.dart';
import 'package:surf_flutter_summer_school_24/features/app/di/app_scope.dart';
import 'package:surf_flutter_summer_school_24/features/debug/data/converters/url_converter.dart';
import 'package:surf_flutter_summer_school_24/features/debug/data/repositories/debug_repository.dart';
import 'package:surf_flutter_summer_school_24/features/debug/domain/repositories/i_debug_repository.dart';
import 'package:surf_flutter_summer_school_24/persistence/storage/config_storage/config_storage_impl.dart';

/// {@template debug_scope.class}
/// Dependencies scope of Debug module.
/// {@endtemplate}
final class DebugScope extends DisposableObject implements IDebugScope {
  @override
  final IDebugRepository debugRepository;

  /// Factory constructor for [DebugScope].
  factory DebugScope.create(BuildContext context) {
    final appScope = context.read<IAppScope>();

    return DebugScope(
      DebugRepository(
        configStorage: ConfigStorageImpl(appScope.sharedPreferences),
        urlConverter: const UrlConverter(),
      ),
    );
  }

  /// {@macro debug_scope.class}
  DebugScope(this.debugRepository);
}

/// Interface for Debug DI Scope.
abstract interface class IDebugScope implements IDisposableObject {
  /// Debug repository.
  abstract final IDebugRepository debugRepository;
}
