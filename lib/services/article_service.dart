import 'package:angular2/core.dart';

import 'package:kipsu_fi/articles/article.dart';
import 'package:kipsu_fi/articles/components/outrun_component.dart';

@Injectable()
class ArticleService {
  final Map<String, Article> registered_articles = {

    'Outrun': new Article(
        'Outrun',
        'Outrun pyramid',
        'Finding the most liked route through Out Run gamefield. My submission for Reaktor Fast Track challenge.',
        new DateTime(2016, 5, 8),
        OutrunComponent)
  };

  Project getArticle(String id) => registered_articles[id];
}

