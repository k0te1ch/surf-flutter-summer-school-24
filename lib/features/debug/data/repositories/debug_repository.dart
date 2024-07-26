import 'package:surf_flutter_summer_school_24/config/url.dart';
import 'package:surf_flutter_summer_school_24/core/architecture/domain/entity/failure.dart';
import 'package:surf_flutter_summer_school_24/core/architecture/domain/entity/request_operation.dart';
import 'package:surf_flutter_summer_school_24/core/architecture/domain/entity/result.dart';
import 'package:surf_flutter_summer_school_24/features/debug/data/converters/url_converter.dart';
import 'package:surf_flutter_summer_school_24/features/debug/domain/repositories/i_debug_repository.dart';
import 'package:surf_flutter_summer_school_24/persistence/storage/config_storage/i_config_storage.dart';

/// {@template debug_repository.class}
/// Implementation of [IDebugRepository].
/// {@endtemplate}
final class DebugRepository implements IDebugRepository {
  final IConfigStorage _configStorage;
  final IUrlConverter _urlConverter;

  /// {@macro debug_repository.class}
  const DebugRepository({
    required IConfigStorage configStorage,
    required IUrlConverter urlConverter,
  })  : _configStorage = configStorage,
        _urlConverter = urlConverter;

  @override
  RequestOperation<void> saveProxyUrl(String? proxyUrl) async {
    try {
      await _configStorage.setProxyUrl(proxyUrl: proxyUrl);

      return const ResultOk(null);
    } on Object catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
    }
  }

  @override
  RequestOperation<void> saveServerUrl(Url url) async {
    try {
      await _configStorage.setUrlType(urlType: _urlConverter.convertReverse(url));

      return const ResultOk(null);
    } on Object catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
    }
  }
}
