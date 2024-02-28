import 'package:flutter_test/flutter_test.dart';
import 'package:odoo_timers/model/app_timer.dart';

import '../helpers/fake_clock.dart';

void main() {
  group('AppTimer', () {
    test(
        'WHEN a timer is created '
        'THEN is starts running', () {
      final timer = AppTimer(FakeClock());
      expect(timer.isRunning, true);
    });

    test(
        'WHEN time elapses '
        'THEN the timer value changes accordingly', () {
      final clock = FakeClock();

      final timer = AppTimer(clock);
      expect(timer.value, Duration.zero);

      clock.advance(5.seconds);
      expect(timer.value, 5.seconds);
    });

    test(
        'WHEN the timer is paused '
        'THEN it stops running', () {
      var timer = AppTimer(FakeClock());
      expect(timer.isRunning, true);
      expect(timer.isPaused, false);

      timer = timer.pause();

      expect(timer.isRunning, false);
      expect(timer.isPaused, true);
    });

    test(
        'GIVEN a paused timer '
        'WHEN time elapses '
        'THEN the timer value does not change', () {
      final clock = FakeClock();

      final timer = AppTimer(clock).pause();
      expect(timer.isRunning, false);
      expect(timer.isPaused, true);

      clock.advance(5.seconds);
      expect(timer.value, Duration.zero);
    });
  });
}

extension on int {
  Duration get seconds => Duration(seconds: this);
}
