import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/features/snack_queue/presentation/snack_queue_controller.dart';
import 'package:surf_flutter_summer_school_24/features/snack_queue/presentation/snack_queue_wm.dart';

/// {@template snack_queue_widget.class}
/// SnackQueueWidget.
/// {@endtemplate}
class SnackQueueWidget extends ElementaryWidget<ISnackQueueWM> {
  /// {@macro snack_queue_widget.class}
  const SnackQueueWidget({
    required this.child,
    super.key,
    WidgetModelFactory wmFactory = defaultSnackQueueWMFactory,
  }) : super(wmFactory);

  /// Child.
  final Widget child;

  @override
  Widget build(ISnackQueueWM wm) {
    return Provider<SnackQueueController>.value(
      value: wm,
      child: child,
    );
  }
}
