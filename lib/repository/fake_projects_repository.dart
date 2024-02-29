import 'package:odoo_timers/mock_data.dart';
import 'package:odoo_timers/model/model.dart';
import 'package:odoo_timers/repository/repository.dart';

class FakeProjectsRepository implements ProjectsRepository {
  @override
  Future<List<Project>> getProjects() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return projects;
  }
}
