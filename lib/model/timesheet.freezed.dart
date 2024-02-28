// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timesheet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Timesheet {
  String get id => throw _privateConstructorUsedError;
  Project get project => throw _privateConstructorUsedError;
  Task get task => throw _privateConstructorUsedError;
  AppTimer get timer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimesheetCopyWith<Timesheet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimesheetCopyWith<$Res> {
  factory $TimesheetCopyWith(Timesheet value, $Res Function(Timesheet) then) =
      _$TimesheetCopyWithImpl<$Res, Timesheet>;
  @useResult
  $Res call({String id, Project project, Task task, AppTimer timer});

  $ProjectCopyWith<$Res> get project;
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TimesheetCopyWithImpl<$Res, $Val extends Timesheet>
    implements $TimesheetCopyWith<$Res> {
  _$TimesheetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = null,
    Object? task = null,
    Object? timer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as AppTimer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimesheetImplCopyWith<$Res>
    implements $TimesheetCopyWith<$Res> {
  factory _$$TimesheetImplCopyWith(
          _$TimesheetImpl value, $Res Function(_$TimesheetImpl) then) =
      __$$TimesheetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Project project, Task task, AppTimer timer});

  @override
  $ProjectCopyWith<$Res> get project;
  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$TimesheetImplCopyWithImpl<$Res>
    extends _$TimesheetCopyWithImpl<$Res, _$TimesheetImpl>
    implements _$$TimesheetImplCopyWith<$Res> {
  __$$TimesheetImplCopyWithImpl(
      _$TimesheetImpl _value, $Res Function(_$TimesheetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = null,
    Object? task = null,
    Object? timer = null,
  }) {
    return _then(_$TimesheetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as AppTimer,
    ));
  }
}

/// @nodoc

class _$TimesheetImpl implements _Timesheet {
  const _$TimesheetImpl(
      {required this.id,
      required this.project,
      required this.task,
      required this.timer});

  @override
  final String id;
  @override
  final Project project;
  @override
  final Task task;
  @override
  final AppTimer timer;

  @override
  String toString() {
    return 'Timesheet(id: $id, project: $project, task: $task, timer: $timer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimesheetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, project, task, timer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimesheetImplCopyWith<_$TimesheetImpl> get copyWith =>
      __$$TimesheetImplCopyWithImpl<_$TimesheetImpl>(this, _$identity);
}

abstract class _Timesheet implements Timesheet {
  const factory _Timesheet(
      {required final String id,
      required final Project project,
      required final Task task,
      required final AppTimer timer}) = _$TimesheetImpl;

  @override
  String get id;
  @override
  Project get project;
  @override
  Task get task;
  @override
  AppTimer get timer;
  @override
  @JsonKey(ignore: true)
  _$$TimesheetImplCopyWith<_$TimesheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
