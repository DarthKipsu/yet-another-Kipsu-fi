import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/projects/project.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'projects',
    templateUrl: 'project_list_component.html',
    styleUrls: const ['project_list_component.css'])
class ProjectListComponent implements OnActivate {
  final TitleService _titleService;
  final List<Project> projects = _registered_projects;

  ProjectListComponent(this._titleService);

  routerOnActivate(next, prev) {
    _titleService.title = "Projects";
    _titleService.subtitle = "The best way to learn a new language or a concept.";
  }

}

final List<Project> _registered_projects = [
  new Project(
      'Joku otsikko',
      'Joku subtitle',
      'joku.html'),
  new Project(
      'Toinen otsikko',
      'Toinen väliotsikko',
      'toinen.html')
];

