import 'package:odoo_timers/model/clock.dart';

class FakeClock implements Clock {
  static final initialTime = DateTime(2021, 1, 1, 10);

  DateTime _now = initialTime;

  @override
  DateTime now() => _now;

  void advance(Duration duration) {
    _now = _now.add(duration);
  }
}
