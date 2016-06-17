import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/projects/project.dart';
import 'package:kipsu_fi/services/project_service.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'projects',
    templateUrl: 'project_list_component.html',
    styleUrls: const ['project_list_component.css'])

class ProjectListComponent implements OnActivate {
  final TitleService _titleService;
  final ProjectService _projectService;
  final Router _router;

  ProjectListComponent(this._titleService, this._projectService, this._router);

  routerOnActivate(next, prev) {
    _titleService.title = "Projects";
    _titleService.subtitle = "The best way to learn a new language or a concept.";
  }

  List<Project> get projects => _projectService.registered_projects.values;

  goTo(Project project) {
    _router.navigate(['Project', {'project': project.id}]);
  }
}

