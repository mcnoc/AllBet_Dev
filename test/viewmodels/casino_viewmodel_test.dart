import 'package:flutter_test/flutter_test.dart';
import 'package:all_bet_info/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('CasinoViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
