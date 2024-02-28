import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odoo_timers/model/model.dart';

part 'timesheet.freezed.dart';

@freezed
class Timesheet with _$Timesheet {
  const factory Timesheet({
    required String id,
    required Project project,
    required Task task,
    required AppTimer timer,
  }) = _Timesheet;
}
