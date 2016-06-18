import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/articles/article.dart';
import 'package:kipsu_fi/services/article_service.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'articles',
    templateUrl: 'articles_list_component.html',
    styleUrls: const ['articles_list_component.css'])
class ArticleListComponent implements OnActivate {
  final TitleService _titleService;
  final ArticleService _articleService;
  final Router _router;

  ArticleListComponent(this._titleService, this._articleService, this._router);

  routerOnActivate(next, prev) {
    _titleService.title = "Articles";
    _titleService.subtitle = "About computer science, life and everything.";
  }

  List<Article> get articles => _articleService.registered_articles.values;
}

