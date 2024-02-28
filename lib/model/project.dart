import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odoo_timers/model/model.dart';

part 'project.freezed.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String id,
    required String name,
    required List<Task> tasks,
  }) = _Project;
}
