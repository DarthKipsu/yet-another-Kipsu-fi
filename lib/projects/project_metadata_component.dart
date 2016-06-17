import 'package:angular2/core.dart';

import 'package:kipsu_fi/projects/project.dart';
import 'package:kipsu_fi/projects/language.dart';
import 'package:kipsu_fi/services/project_service.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'project-metadata',
    templateUrl: 'project_metadata_component.html')
class ProjectMetadataComponent {
  @Input()
  Project project;

  String get title => project.title;

  DateTime get date => project.formattedDate;

  String get githubLink => project.githubLink;

  List<Language> get languages => project.languages;
}
