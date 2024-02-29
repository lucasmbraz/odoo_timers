import 'package:odoo_timers/model/project.dart';
import 'package:odoo_timers/model/task.dart';
import 'package:odoo_timers/model/timesheet.dart';

abstract class TimesheetsRepository {
  Stream<List<Timesheet>> getTimesheets();

  Future<void> addTimesheet({required Project project, required Task task});
}
