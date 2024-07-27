import 'package:elementary/elementary.dart';
import 'package:surf_flutter_summer_school_24/core/architecture/presentation/base_model.dart';
import 'package:surf_flutter_summer_school_24/features/snack_queue/presentation/snack_queue_widget.dart';

/// {@template snack_queue_model.class}
/// [ElementaryModel] for [SnackQueueWidget].
/// {@endtemplate}
final class SnackQueueModel extends BaseModel {
  /// {@macro snack_queue_model.class}
  SnackQueueModel({
    required super.logWriter,
  });
}
