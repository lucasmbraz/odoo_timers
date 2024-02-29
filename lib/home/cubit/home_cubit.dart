import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odoo_timers/model/model.dart';
import 'package:odoo_timers/repository/repository.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(TimesheetsRepository repository)
      : _repository = repository,
        super(const HomeState.initial());

  final TimesheetsRepository _repository;

  late final StreamSubscription<List<Timesheet>> _subscription;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  void init() {
    emit(const HomeState.loading());

    _subscription = _repository.getTimesheets().listen((timesheets) {
      emit(HomeState.loaded(timesheets));
    });
  }
}
