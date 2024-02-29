import 'package:odoo_timers/model/model.dart';

abstract class ProjectsRepository {
  Future<List<Project>> getProjects();
}
