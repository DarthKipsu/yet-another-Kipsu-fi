import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/projects/project.dart';
import 'package:kipsu_fi/services/project_service.dart';

@Component(
    selector: 'project',
    templateUrl: 'project_component.html',
    styleUrls: const ['project_component.css'],
    inputs: const ['project'])
class ProjectComponent implements OnInit {
  Project project;

  final RouteParams _routeParams;
  final ProjectService _projectService;

  ProjectComponent(this._routeParams, this._projectService);

  ngOnInit() {
    project = _projectService.getProject(_routeParams.get('project'));
  }
}

