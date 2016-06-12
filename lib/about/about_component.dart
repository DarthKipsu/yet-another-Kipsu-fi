import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'about-me',
    templateUrl: 'about_component.html',
    styleUrls: const ['about_component.css'])
class AboutComponent implements OnActivate {
  final TitleService _titleService;

  AboutComponent(this._titleService) {
    print('created!');
  }

  routerOnActivate(next, prev) {
    _titleService.setTitle("fff");
  }
}

