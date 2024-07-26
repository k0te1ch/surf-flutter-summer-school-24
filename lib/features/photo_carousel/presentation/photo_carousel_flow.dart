import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/common/widgets/di_scope.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/data/repositories/photo_carousel_repository.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/di/photo_carousel_scope.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/presentation/screens/photo_carousel/photo_carousel_screen.dart';

/// {@template photo_carousel_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class PhotoCarouselFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro photo_carousel_flow.class}
  const PhotoCarouselFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    const repository = PhotoCarouselRepository();

    return DiScope<IPhotoCarouselScope>(
      factory: (context) => PhotoCarouselScope(repository),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const PhotoCarouselScreen();
  }
}
