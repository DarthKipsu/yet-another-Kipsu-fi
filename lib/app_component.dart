import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/about/about_component.dart';
import 'package:kipsu_fi/articles/articles_component.dart';
import 'package:kipsu_fi/front_page/unicorns_component.dart';
import 'package:kipsu_fi/photography/photography_component.dart';
import 'package:kipsu_fi/projects/projects_component.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'app',
    templateUrl: 'app_component.html',
    styleUrls: const ['app_component.css'],
    directives: const [
      ROUTER_DIRECTIVES,
      AboutComponent,
      UnicornsComponent
    ],
    providers: const [ROUTER_PROVIDERS, TitleService])

@RouteConfig(const [
    const Route(path: '/', name: 'Unicorns', component: UnicornsComponent, useAsDefault: true),
    const Route(path: '/about', name: 'About', component: AboutComponent),
    const Route(path: '/projects', name: 'Projects', component: ProjectsComponent),
    const Route(path: '/articles', name: 'Articles', component: ArticlesComponent),
    const Route(path: '/photography', name: 'Photography', component: PhotographyComponent)
])

class AppComponent {
  final TitleService _titleService;
  String get title => _titleService.title;

  AppComponent(this._titleService);

}

