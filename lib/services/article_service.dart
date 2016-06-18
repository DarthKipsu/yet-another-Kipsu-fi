import 'package:angular2/core.dart';

import 'package:kipsu_fi/articles/article.dart';

@Injectable()
class ArticleService {
  final Map<String, Article> registered_articles = {
  };

  Project getArticle(String id) => registered_articles[id];
}

