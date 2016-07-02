import 'dart:convert';
import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

@Component(
    selector: 'my-languages',
    templateUrl: 'my_languages_component.html',
    styleUrls: const ['my_languages_component.css'])
class MyLanguagesComponent implements OnInit {
  Map<String, String> _logos = {
    'JavaScript': 'javascript.svg',
    'CSS': 'css.svg',
    'Java': 'java.svg',
    'HTML': 'html.svg',
    'Ruby': 'ruby.svg',
    'Clojure': 'clojure.svg',
    'Python': 'python.svg',
    'C': 'c.png',
    'Dart': 'dart.svg',
    'Scala': 'scala.svg'
  };
  Map<String, String> _bytes;
  List<String> languages;

  String classFor(String language) {
    final languageSize = _bytes[language];
    if (languageSize < 10000) return 'xs';
    if (languageSize < 100000) return 's';
    if (languageSize < 1000000) return 'm';
    if (languageSize < 10000000) return 'l';
    return 'xl';
  }

  String bytes(String language) => (_bytes[language] / 1000).floor();

  bool hasLogo(String language) => _logos[language] != null;

  String logoUrl(String language) => 'packages/kipsu_fi/assets/logos/${_logos[language]}';

  ngOnInit() {
    final path = 'packages/kipsu_fi/cron/languages';
    final httpRequest = new HttpRequest();
    httpRequest
      ..open('GET', path)
      ..onLoadEnd.listen((_) => _onLanguagesLoaded(httpRequest))
      ..send('');
  }

  void _onLanguagesLoaded(httpRequest httpRequest) {
    if (httpRequest.status == 200) {
      _bytes = JSON.decode(httpRequest.responseText);
      languages = _bytes.keys.where((k) => _bytes[k] > 1000).toList();
      languages.sort((a, b) => _bytes[b].compareTo(_bytes[a]));
    }
  }
}

