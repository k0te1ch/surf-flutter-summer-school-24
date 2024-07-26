import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:surf_flutter_summer_school_24/common/utils/logger/i_log_writer.dart';
import 'package:surf_flutter_summer_school_24/config/url.dart';
import 'package:surf_flutter_summer_school_24/core/architecture/domain/entity/result.dart';
import 'package:surf_flutter_summer_school_24/features/debug/domain/repositories/i_debug_repository.dart';
import 'package:surf_flutter_summer_school_24/features/debug/presentation/debug/debug_model.dart';

class MockDebugRepository extends Mock implements IDebugRepository {}

class MockLogWriter extends Mock implements ILogWriter {}

void main() {
  late DebugModel model;
  final debugRepository = MockDebugRepository();
  final logWriter = MockLogWriter();
  const serverUrl = Url.dev;
  const proxyMock = 'proxy';

  setUpAll(() {
    model = DebugModel(
      debugRepository: debugRepository,
      logWriter: logWriter,
    );

    when(() => debugRepository.saveServerUrl(serverUrl)).thenAnswer((_) => Future.value(const Result.ok(null)));
    when(() => debugRepository.saveProxyUrl(proxyMock)).thenAnswer((_) => Future.value(const Result.ok(null)));
  });

  test(
    'Save server',
    () async {
      await model.saveServerUrl(serverUrl);
      final _ = verify(() => debugRepository.saveServerUrl(serverUrl));
    },
  );

  test(
    'Save proxy',
    () async {
      await model.saveProxyUrl(proxyMock);
      final _ = verify(() => debugRepository.saveProxyUrl(proxyMock));
    },
  );
}
