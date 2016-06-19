import 'package:angular2/core.dart';

import 'package:kipsu_fi/articles/article.dart';
import 'package:kipsu_fi/articles/components/huffman_component.dart';
import 'package:kipsu_fi/articles/components/outrun_component.dart';
import 'package:kipsu_fi/articles/components/university_entrance_component.dart';
import 'package:kipsu_fi/articles/components/uolevi_component.dart';

@Injectable()
class ArticleService {
  final Map<String, Article> registered_articles = {

    'Huffman': new Article(
        'Huffman',
        'Huffman Code',
        'Data compression algorithm with variable length codes.',
        new DateTime(2015, 2, 16),
        HuffmanComponent),

    'Uolevi': new Article(
        'Uolevi',
        'Uolevi\'s Garden Promenade',
        'Finding ways to travel through an n^2 grid, visiting all nodes just once.',
        new DateTime(2014, 10, 28),
        UoleviComponent),

    'UniversityEntrance': new Article(
        'UniversityEntrance',
        'University Entrance Examinations',
        'A summary of my entrance examns to Univeristy of Helsinki department of computer sciences, spring 2014.',
        new DateTime(2014, 5, 30),
        UniversityEntranceComponent),

    'Outrun': new Article(
        'Outrun',
        'Outrun pyramid',
        'Finding the most liked route through Out Run gamefield. My submission for Reaktor Fast Track challenge.',
        new DateTime(2014, 3, 30),
        OutrunComponent)
  };

  Project getArticle(String id) => registered_articles[id];
}

