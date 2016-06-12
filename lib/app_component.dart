import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/about/about_component.dart';
import 'package:kipsu_fi/front_page/unicorns_component.dart';
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
    const Route(path: '/about', name: 'About', component: AboutComponent)
])

class AppComponent implements OnInit {
  final TitleService titleService;
  String title;

  AppComponent(this.titleService);
  
  ngOnInit() {
    titleService.addChangeListener((String newTitle) { print('jotain'); title = newTitle; });
  }

}

