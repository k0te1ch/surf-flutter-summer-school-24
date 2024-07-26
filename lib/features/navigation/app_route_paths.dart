/// List of all the paths that are used in navigation.
///
/// Have to been filled with the entries like this:
/// ```dart
/// /// Path description.
/// static const String flowPath = 'flowPath';
/// ```
abstract class AppRoutePaths {
  /// Path to debug screen.
  static const debugPath = '/debug';

  /// Path to photo carousel screen.
  static const photoCarousel = '/photo_carousel';

  /// Path to ui kit screen.
  static const uiKitPath = '/ui_kit';

  /// Path to feature example screen.
  static const featureExample = '/feature_example';

  /// Path to photo grid screen.
  static const photoGrid = '/photo_grid';
}
