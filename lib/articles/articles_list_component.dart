import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'articles',
    templateUrl: 'articles_list_component.html',
    styleUrls: const ['articles_list_component.css'])
class ArticleListComponent implements OnActivate {
  final TitleService _titleService;

  ArticleListComponent(this._titleService);

  routerOnActivate(next, prev) {
    _titleService.title = "Articles";
    _titleService.subtitle = "About computer science, life and everything.";
  }
}

