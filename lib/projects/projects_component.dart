import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'projects',
    templateUrl: 'projects_component.html',
    styleUrls: const ['projects_component.css'])
class ProjectsComponent implements OnActivate {
  final TitleService _titleService;

  ProjectsComponent(this._titleService);

  routerOnActivate(next, prev) {
    _titleService.title = "Projects";
    _titleService.subtitle = "The best way to learn a new language or a concept.";
  }
}

