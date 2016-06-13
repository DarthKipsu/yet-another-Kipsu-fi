import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'unicorns',
    templateUrl: 'unicorns_component.html',
    styleUrls: const ['unicorns_component.css'])
class UnicornsComponent implements OnActivate {
  final TitleService _titleService;

  UnicornsComponent(this._titleService);

  routerOnActivate(next, prev) {
    _titleService.title = "darth.kipsu.fi";
    _titleService.subtitle = 'Presenting you with my reality.';
  }
}
