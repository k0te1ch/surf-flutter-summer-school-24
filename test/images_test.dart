import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_summer_school_24/assets/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.logoLight).existsSync(), isTrue);
    expect(File(Images.logo).existsSync(), isTrue);
    expect(File(Images.test).existsSync(), isTrue);
  });
}
