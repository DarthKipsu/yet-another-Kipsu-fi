import 'package:angular2/core.dart';

import 'package:kipsu_fi/articles/article.dart';
import 'package:kipsu_fi/services/article_service.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'article-metadata',
    templateUrl: 'article_metadata_component.html')
class ArticleMetadataComponent {
  @Input()
  Article article;

  String get title => article.title;

  DateTime get date => article.formattedDate;
}
