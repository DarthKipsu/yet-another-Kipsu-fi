import 'dart:html';
import 'dart:js';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/articles/article.dart';
import 'package:kipsu_fi/articles/article_metadata_component.dart';
import 'package:kipsu_fi/services/article_service.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'uolevi',
    templateUrl: 'uolevi_component.html',
    directives: const [ArticleMetadataComponent])
class UoleviComponent implements OnInit {
  final TitleService _titleService;
  final RouteParams _routeParams;
  final ArticleService _articleService;

  Article article;

  UoleviComponent(this._titleService, this._routeParams, this._articleService);

  @override
  ngOnInit() {
    article = _articleService.getArticle(_routeParams.get('article'));
    _titleService.title = article.title;
    _titleService.subtitle = article.subtitle;
    JsObject PR = context['PR'];
    PR.callMethod('prettyPrint');
  }
}

