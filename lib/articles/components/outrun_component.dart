import 'dart:html';
import 'dart:js';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/articles/article.dart';
import 'package:kipsu_fi/articles/article_metadata_component.dart';
import 'package:kipsu_fi/services/article_service.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'outrun',
    templateUrl: 'outrun_component.html',
    directives: const [ArticleMetadataComponent])
class OutrunComponent implements OnInit {
  final TitleService _titleService;
  final RouteParams _routeParams;
  final ArticleService _articleService;

  Article article;

  OutrunComponent(this._titleService, this._routeParams, this._articleService);

  @override
  ngOnInit() {
    article = _articleService.getArticle(_routeParams.get('article'));
    _titleService.title = article.title;
    _titleService.subtitle = article.subtitle;
    JsObject hljs = context['hljs'];
    final codeBlocks = querySelectorAll('pre code');
    codeBlocks.forEach((block) => hljs.callMethod('highlightBlock', [block]));
  }
}

