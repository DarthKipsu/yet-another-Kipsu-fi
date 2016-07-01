import 'dart:convert';
import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

@Component(
    selector: 'my-languages',
    templateUrl: 'my_languages_component.html',
    styleUrls: const ['my_languages_component.css'])
class MyLanguagesComponent implements OnInit {
  final httpRequest = new HttpRequest();

  ngOnInit() {
    final path = 'packages/kipsu_fi/cron/languages';
    httpRequest
      ..open('GET', path)
      ..onLoadEnd.listen((_) => onLanguagesLoaded())
      ..send('');
  }

  void onLanguagesLoaded() {
    if (httpRequest.status == 200) {
      final data = JSON.decode(httpRequest.responseText);
      data.forEach((k, v) {
        print('$k: $v');
      });
    }
  }
}

