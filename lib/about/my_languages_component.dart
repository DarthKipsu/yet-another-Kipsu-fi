import 'dart:convert';
import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

@Component(
    selector: 'my-languages',
    templateUrl: 'my_languages_component.html',
    styleUrls: const ['my_languages_component.css'])
class MyLanguagesComponent implements OnInit {
  Map<String, String> bytes;
  List<String> languages;

  String classFor(String language) {
    final languageSize = bytes[language];
    if (languageSize < 10000) return 'xs';
    if (languageSize < 100000) return 's';
    if (languageSize < 1000000) return 'm';
    if (languageSize < 10000000) return 'l';
    return 'xl';
  }

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
      bytes = JSON.decode(httpRequest.responseText);
      languages = bytes.keys.where((k) => bytes[k] > 1000).toList();
      languages.sort((a, b) => bytes[b].compareTo(bytes[a]));
      bytes.forEach((k, v) {
        print('$k: $v');
      });
      print(languages);
    }
  }
}

