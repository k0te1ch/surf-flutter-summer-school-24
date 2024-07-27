import 'package:surf_flutter_summer_school_24/core/architecture/domain/entity/failure.dart';

/// {@template i_log_writer.class}
/// SSOT for logging in the application.
/// {@endtemplate}
abstract interface class ILogWriter {
  /// Log message.
  void log(String message);

  /// Log exception.
  void exception(Object exception, [StackTrace? stackTrace]);

  /// Log failure.
  void failure(Failure failure);
}
