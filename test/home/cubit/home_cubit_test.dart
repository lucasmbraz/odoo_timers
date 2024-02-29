import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:odoo_timers/home/cubit/home_cubit.dart';
import 'package:odoo_timers/mock_data.dart';
import 'package:odoo_timers/repository/repository.dart';

import '../../helpers/fake_clock.dart';

void main() {
  group('HomeCubit', () {
    late TimesheetsRepository timesheetsRepository;

    setUp(() {
      timesheetsRepository = InMemoryTimesheetsRepository(clock: FakeClock());
    });

    test('initial state is HomeStateInitial', () {
      expect(HomeCubit(timesheetsRepository).state, const HomeStateInitial());
    });

    blocTest<HomeCubit, HomeState>(
      'WHEN init is called '
      'THEN it emits the loading state '
      'AND the loaded state with an empty timesheet list',
      build: () => HomeCubit(timesheetsRepository),
      act: (cubit) => cubit.init(),
      expect: () => [
        const HomeStateLoading(),
        const HomeStateLoaded([]),
      ],
    );

    blocTest<HomeCubit, HomeState>(
      'WHEN a timesheet is added '
      'THEN it emits the loaded state with the new timesheet',
      build: () => HomeCubit(timesheetsRepository),
      act: (cubit) {
        cubit.init();
        timesheetsRepository.addTimesheet(
          project: projects.first,
          task: projects.first.tasks.first,
        );
      },
      skip: 2,
      expect: () => [
        isA<HomeStateLoaded>()
            .having((s) => s.timesheets.length, 'One timesheet', 1)
            .having(
              (s) => s.timesheets.first.project,
              'The right project',
              projects.first,
            )
            .having(
              (s) => s.timesheets.first.task,
              'The right task',
              projects.first.tasks.first,
            ),
      ],
    );
  });
}
