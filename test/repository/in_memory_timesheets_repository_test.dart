import 'package:flutter_test/flutter_test.dart';
import 'package:odoo_timers/model/model.dart';
import 'package:odoo_timers/repository/repository.dart';

import '../helpers/fake_clock.dart';

void main() {
  group('InMemoryTimesheetsRepository', () {
    test(
        'WHEN it is created '
        'THEN it emits an empty list', () async {
      final repository = InMemoryTimesheetsRepository(clock: FakeClock());

      expect(repository.getTimesheets(), emits(<Timesheet>[]));
    });

    test(
        'WHEN a timesheet is added '
        'THEN it emits the timesheet', () async {
      final TimesheetsRepository repository = InMemoryTimesheetsRepository(
        clock: FakeClock(),
      );

      const task = Task(id: 'task-id', title: 'task-title');
      const project = Project(
        id: 'project-id',
        name: 'project-name',
        tasks: [task],
      );

      await repository.addTimesheet(
        project: project,
        task: task,
      );

      final timesheets = await repository.getTimesheets().first;
      expect(timesheets.length, 1);
      expect(timesheets.first.project, project);
      expect(timesheets.first.task, task);
      expect(timesheets.first.timer.isRunning, true);
    });
  });
}
