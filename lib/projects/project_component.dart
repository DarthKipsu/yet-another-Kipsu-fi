import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/projects/project.dart';
import 'package:kipsu_fi/services/project_service.dart';

@Component(
    selector: 'project',
    template: '',
    styleUrls: const ['project_component.css'])
class ProjectComponent implements OnInit {
  final RouteParams _routeParams;
  final ProjectService _projectService;
  final ComponentResolver _componentResolver;
  final ViewContainerRef _vcRef;

  ProjectComponent(this._routeParams, this._projectService, this._componentResolver, this._vcRef);

  ngOnInit() {
    final project = _projectService.getProject(_routeParams.get('project'));
    _componentResolver.resolveComponent(project.component)
        .then((factory) => _vcRef.createComponent(factory));
  }
}

