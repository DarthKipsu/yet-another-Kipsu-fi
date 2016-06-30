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
    final path = 'https://api.github.com/users/DarthKipsu/repos?per_page=100';
    httpRequest
      ..open('GET', path)
      ..onLoadEnd.listen((_) => onRepositoriesLoaded(httpRequest))
      ..send('');
  }

  void onRepositoriesLoaded(HttpRequest request) {
    if (request.status == 200) {
      final data = JSON.decode(request.responseText);
      data.forEach((d) {
        print(d['full_name']);
        httpRequest
          ..open('GET', 'https://api.github.com/repos/${d['full_name']}/languages')
          ..onLoadEnd.listen((_) => onLanguageDataLoaded(httpRequest))
          ..send('');
      });
      print(data.length);
    } else {
      print(request.status);
    }
  }

  void onLanguageDataLoaded(httpRequest request) {
    if (request.status == 200) {
      final data = JSON.decode(request.responseText);
      data.keys.forEach((k) => print('$k: ${data[k]}'));
    } else {
      print(request.status);
    }
  }
}

