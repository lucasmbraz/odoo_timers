import 'package:odoo_timers/model/clock.dart';

class AppTimer {
  AppTimer(Clock clock) : this._(clock);

  AppTimer._(
    this.clock, {
    this.isRunning = true,
    DateTime? startTime,
    DateTime? endTime,
  })  : _startTime = startTime ?? clock.now(),
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

  AppTimer resume() => _copyWith(
        isRunning: true,
        startTime: clock.now().subtract(value),
      );

  AppTimer _copyWith({
    bool? isRunning,
    DateTime? startTime,
    DateTime? endTime,
  }) {
    return AppTimer._(
      clock,
      isRunning: isRunning ?? this.isRunning,
      startTime: startTime ?? _startTime,
      endTime: endTime ?? _endTime,
    );
  }
}
