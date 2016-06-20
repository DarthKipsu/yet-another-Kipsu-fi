import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/articles/article.dart';
import 'package:kipsu_fi/services/article_service.dart';

@Component(
    selector: 'article',
    template: '')
class ArticleComponent implements OnInit {
  final RouteParams _routeParams;
  final ArticleService _articleService;
  final ComponentResolver _componentResolver;
  final ViewContainerRef _vcRef;

  ArticleComponent(this._routeParams, this._articleService, this._componentResolver, this._vcRef);

  ngOnInit() {
    final article = _articleService.getArticle(_routeParams.get('article'));
    _componentResolver.resolveComponent(article.component)
        .then((factory) => _vcRef.createComponent(factory));
    window.scrollTo(0,0);
  }
}

