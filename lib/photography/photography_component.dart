import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/photography/europe_component.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'photography',
    templateUrl: 'photography_component.html',
    styleUrls: const ['photography_component.css'],
    directives: const [EuropeComponent])
class PhotographyComponent implements OnActivate {
  final TitleService _titleService;

  PhotographyComponent(this._titleService);

  routerOnActivate(next, prev) {
    _titleService.title = "Photography";
    _titleService.subtitle = "See the world through my eyes.";
    window.scrollTo(0,0);
  }
}

