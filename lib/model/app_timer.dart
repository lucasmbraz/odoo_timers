import 'package:odoo_timers/model/clock.dart';

class AppTimer {
  AppTimer(Clock clock) : this._(clock);

  AppTimer._(this.clock, {this.isRunning = true, DateTime? endTime})
      : _startTime = clock.now(),
        _endTime = endTime;

  final Clock clock;
  final bool isRunning;

  final DateTime _startTime;
  final DateTime? _endTime;

  Duration get value {
    if (isRunning) {
      return clock.now().difference(_startTime);
    } else {
      return _endTime!.difference(_startTime);
    }
  }

  bool get isPaused => !isRunning;

  AppTimer pause() => _copyWith(
        isRunning: false,
        endTime: clock.now(),
      );

  AppTimer _copyWith({
    bool? isRunning,
    DateTime? endTime,
  }) {
    return AppTimer._(
      clock,
      isRunning: isRunning ?? this.isRunning,
      endTime: endTime ?? _endTime,
    );
  }
}
