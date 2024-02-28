import 'package:odoo_timers/model/model.dart';

const users = [
  User(
    id: '1',
    name: 'John Doe',
  ),
  User(
    id: '2',
    name: 'Jane Smith',
  ),
  User(
    id: '3',
    name: 'John Johnson',
  ),
];

const projects = [
  Project(
    id: '1',
    name: 'Apexive: Content Planning',
    tasks: [
      Task(
        id: '1',
        title: 'Research',
      ),
      Task(
        id: '2',
        title: 'Writing',
      ),
      Task(
        id: '3',
        title: 'Editing',
      ),
    ],
  ),
  Project(
    id: '2',
    name: 'Apexive: Website Redesign',
    tasks: [
      Task(
        id: '4',
        title: 'UX Research',
      ),
      Task(
        id: '5',
        title: 'Figma Design',
      ),
      Task(
        id: '6',
        title: 'Website Development',
      ),
    ],
  ),
];
