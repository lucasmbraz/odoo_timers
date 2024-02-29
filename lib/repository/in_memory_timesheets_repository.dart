import 'package:odoo_timers/model/model.dart';
import 'package:odoo_timers/repository/timesheets_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class InMemoryTimesheetsRepository implements TimesheetsRepository {
  InMemoryTimesheetsRepository({
    required this.clock,
  });

  final Clock clock;

  final subject = BehaviorSubject<List<Timesheet>>.seeded([]);

  @override
  Stream<List<Timesheet>> getTimesheets() => subject.stream;

  @override
  Future<void> addTimesheet({
    required Project project,
    required Task task,
  }) async {
    final timesheet = Timesheet(
      id: _uuid.v4(),
      project: project,
      task: task,
      timer: AppTimer(clock),
    );

    subject.add([timesheet, ...subject.value]);
  }
}
