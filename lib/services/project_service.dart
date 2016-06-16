import 'package:angular2/core.dart';

import 'package:kipsu_fi/projects/project.dart';
import 'package:kipsu_fi/projects/components/joku_component.dart';
import 'package:kipsu_fi/projects/components/toinen_component.dart';

@Injectable()
class ProjectService {
  final Map<String, Project> registered_projects = {
    'joku': new Project(
        'Joku otsikko',
        'Joku subtitle',
        'joku',
        JokuComponent),
    'toinen': new Project(
        'Toinen otsikko',
        'Toinen väliotsikko',
        'toinen',
        ToinenComponent)
  };

  Project getProject(String id) => registered_projects[id];
}

