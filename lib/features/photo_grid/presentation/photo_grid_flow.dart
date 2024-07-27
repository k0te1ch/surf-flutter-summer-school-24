import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/common/widgets/di_scope.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/di/photo_grid_scope.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/screens/photo_grid/photo_grid_screen.dart';

/// {@template photo_grid_flow.class}
/// Entry point to feature.
/// {@endtemplate}
@RoutePage()
class PhotoGridFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro photo_grid_flow.class}
  const PhotoGridFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return DiScope<IPhotoGridScope>(
      factory: (context) => PhotoGridScope.create(),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const PhotoGridScreen();
  }
}
