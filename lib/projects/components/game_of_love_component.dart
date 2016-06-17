import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/projects/project.dart';
import 'package:kipsu_fi/projects/language.dart';
import 'package:kipsu_fi/services/project_service.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'game-of-love',
    templateUrl: 'game_of_love_component.html')
class GameOfLoveComponent implements OnInit {
  final TitleService _titleService;
  final RouteParams _routeParams;
  final ProjectService _projectService;

  Project _project;

  GameOfLoveComponent(this._titleService, this._routeParams, this._projectService);

  @override
  ngOnInit() {
    _project = _projectService.getProject(_routeParams.get('project'));
    _titleService.title = _project.title;
    _titleService.subtitle = _project.subtitle;
  }

  String get title => _project.title;

  DateTime get date => _project.formattedDate;

  String get githubLink => _project.githubLink;

  List<Language> get languages => _project.languages;
}

