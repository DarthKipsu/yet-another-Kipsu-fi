import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/projects/project.dart';
import 'package:kipsu_fi/projects/project_metadata_component.dart';
import 'package:kipsu_fi/projects/language.dart';
import 'package:kipsu_fi/services/project_service.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'bachelors-thesis',
    templateUrl: 'bachelors_thesis_component.html',
    styleUrls: const ['../../content.css'],
    directives: const [ProjectMetadataComponent])
class BachelorsThesisComponent implements OnInit {
  final TitleService _titleService;
  final RouteParams _routeParams;
  final ProjectService _projectService;

  Project project;

  BachelorsThesisComponent(this._titleService, this._routeParams, this._projectService);

  @override
  ngOnInit() {
    project = _projectService.getProject(_routeParams.get('project'));
    _titleService.title = project.title;
    _titleService.subtitle = project.subtitle;
  }
}

