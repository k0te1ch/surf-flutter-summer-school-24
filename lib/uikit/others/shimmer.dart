import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart' as shimmer;
import 'package:surf_flutter_summer_school_24/common/widgets/conditional_wrapper.dart';
import 'package:surf_flutter_summer_school_24/uikit/colors/app_color_scheme.dart';

/// {@template shimmer.class}
/// Shimmer for loading content.
/// {@endtemplate}
class Shimmer extends StatelessWidget {
  /// {@macro shimmer.class}
  const Shimmer({required this.child, this.loading = true, super.key});

  /// Content.
  final Widget child;

  /// Is the download in progress at the moment.
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.appColorScheme;

    return ConditionalWrapper(
      condition: loading,
      onAddWrapper: (insideChild) => shimmer.Shimmer.fromColors(
        baseColor: colorScheme.shimmer,
        highlightColor: colorScheme.background,
        child: insideChild,
      ),
      child: child,
    );
  }
}
