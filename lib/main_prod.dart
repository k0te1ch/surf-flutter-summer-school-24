import 'package:surf_flutter_summer_school_24/config/environment/build_type.dart';
import 'package:surf_flutter_summer_school_24/config/environment/environment.dart';
import 'package:surf_flutter_summer_school_24/runner.dart';

/// Main entry point of app.
void main() {
  run(const Environment(buildType: BuildType.prod)).ignore();
}
