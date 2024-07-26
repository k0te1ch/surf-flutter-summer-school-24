import 'package:flutter/material.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_summer_school_24/features/snack_queue/presentation/snack_queue_controller.dart';
import 'package:surf_flutter_summer_school_24/features/snack_queue/presentation/snack_queue_widget.dart';

/// {@template snack_queue_provider.class}
/// Provides [SnackQueueController] to its descendants.
/// {@endtemplate}
class SnackQueueProvider extends SingleChildStatelessWidget {
  /// {@macro snack_queue_provider.class}
  const SnackQueueProvider({super.key});

  /// Get the [SnackQueueController] from the [BuildContext].
  // ignore: prefer-widget-private-members
  static SnackQueueController of(BuildContext context) => Provider.of<SnackQueueController>(context, listen: false);

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return SnackQueueWidget(child: child ?? const SizedBox.shrink());
  }
}
