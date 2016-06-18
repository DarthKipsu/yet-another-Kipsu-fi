import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/about/about_component.dart';
import 'package:kipsu_fi/articles/articles_list_component.dart';
import 'package:kipsu_fi/front_page/unicorns_component.dart';
import 'package:kipsu_fi/photography/photography_component.dart';
import 'package:kipsu_fi/projects/project.dart';
import 'package:kipsu_fi/projects/project_list_component.dart';
import 'package:kipsu_fi/projects/project_component.dart';
import 'package:kipsu_fi/services/article_service.dart';
import 'package:kipsu_fi/services/project_service.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'app',
    templateUrl: 'app_component.html',
    styleUrls: const ['app_component.css'],
    directives: const [ROUTER_DIRECTIVES],
    providers: const [ROUTER_PROVIDERS, ArticleService, ProjectService, TitleService])

@RouteConfig(const [
    const Route(path: '/', name: 'Unicorns', component: UnicornsComponent, useAsDefault: true),
    const Route(path: '/about', name: 'About', component: AboutComponent),
    const Route(path: '/projects', name: 'Projects', component: ProjectListComponent),
    const Route(path: '/projects/:project', name: 'Project', component: ProjectComponent),
    const Route(path: '/articles', name: 'Articles', component: ArticleListComponent),
    const Route(path: '/photography', name: 'Photography', component: PhotographyComponent)
])

class AppComponent {
  final TitleService _titleService;
  String get title => _titleService.title;
  String get subtitle => _titleService.subtitle;

  AppComponent(this._titleService);
}

