import 'package:auto_route/auto_route.dart';
import 'package:surf_flutter_summer_school_24/features/debug/presentation/debug/debug_flow.dart';
import 'package:surf_flutter_summer_school_24/features/debug/presentation/ui_kit/ui_kit_flow.dart';
import 'package:surf_flutter_summer_school_24/features/feature_example/presentation/feature_example_flow.dart';
import 'package:surf_flutter_summer_school_24/features/navigation/app_route_paths.dart';
import 'package:surf_flutter_summer_school_24/features/photo_carousel/presentation/photo_carousel_flow.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/presentation/photo_grid_flow.dart';

part 'app_router.gr.dart';

/// {@template router.class}
/// Main point of the application navigation.
/// {@endtemplate}
@AutoRouterConfig(
  replaceInRouteName: 'Flow,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: DebugRoute.page,
          path: AppRoutePaths.debugPath,
        ),
        AutoRoute(
          page: UiKitRoute.page,
          path: AppRoutePaths.uiKitPath,
        ),
        AutoRoute(
          page: FeatureExampleRoute.page,
          path: AppRoutePaths.featureExample,
        ),
        AutoRoute(
          page: PhotoCarouselRoute.page,
          path: AppRoutePaths.photoCarousel,
        ),
        AutoRoute(
          page: PhotoGridRoute.page,
          path: AppRoutePaths.photoGrid,
          initial: true,
        )
      ];
}
