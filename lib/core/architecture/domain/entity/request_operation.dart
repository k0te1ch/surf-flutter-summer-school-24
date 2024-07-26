import 'package:surf_flutter_summer_school_24/core/architecture/domain/entity/failure.dart';
import 'package:surf_flutter_summer_school_24/core/architecture/domain/entity/result.dart';

/// Typedef for all methods that may fail.
/// These are mostly repository methods.
typedef RequestOperation<T> = Future<Result<T, Failure>>;
