import 'package:angular2/core.dart';

import 'package:kipsu_fi/projects/project.dart';

@Injectable()
class ProjectService {
  final List<Project> registered_projects = [
    new Project(
        'Joku otsikko',
        'Joku subtitle',
        'joku.html',
        'joku'),
    new Project(
        'Toinen otsikko',
        'Toinen väliotsikko',
        'toinen.html',
        'joku')
  ];

  getProject(String id) {
    return registered_projects[0];
  }
}

