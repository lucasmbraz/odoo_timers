import 'package:odoo_timers/model/clock.dart';

class AppTimer {
  AppTimer(this.clock) : _startTime = clock.now();

  final Clock clock;
  final isRunning = true;

  final DateTime _startTime;

  Duration get value => clock.now().difference(_startTime);
}
