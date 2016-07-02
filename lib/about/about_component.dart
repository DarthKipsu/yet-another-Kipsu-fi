import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/about/my_languages_component.dart';
import 'package:kipsu_fi/about/school.dart';
import 'package:kipsu_fi/about/world_component.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'about-me',
    templateUrl: 'about_component.html',
    styleUrls: const ['about_component.css', '../content.css'],
    directives: const [MyLanguagesComponent, WorldComponent])
class AboutComponent implements OnActivate {
  final String coverPicUrl = '/packages/kipsu_fi/assets/about.jpg';
  final String name = 'Verna Koskinen';
  final String username = 'DarthKipsu';
  final String email = 'darth.kipsu@gmail.com';
  final String phone = '+358 45 1277921';
  final String address = 'Susitie 3 a 4, 00800, Helsinki, Finland';
  final String website = 'darth.kipsu.fi';
  final String github = 'github.com/DarthKipsu';
  final String linkedin = 'linkedin.com/in/vernakoskinen';
  final String facebook = 'facebook.com/verna.koskinen';

  final TitleService _titleService;

  AboutComponent(this._titleService);

  routerOnActivate(next, prev) {
    _titleService.title = "About Me";
    _titleService.subtitle = "Find out more about who I am.";
    window.scrollTo(0,0);
  }

  String getSrcFor(String link) {
    return '//$link';
  }

  final List<School> schools = [
    new School('Helsinki City College of Technology',
        new DateTime(2007, 8, 27),
        new DateTime(2009, 5, 29),
        'Technical Drawing',
        'Infrastructure planning'),
    new School('Lahti University of Applied Sciences',
        new DateTime(2012, 9, 3),
        new DateTime(2015, 3, 16),
        'Environmental Engineering',
        'Urban planning'),
    new School('Reactor academy',
        new DateTime(2015, 3, 3),
        new DateTime(2015, 6, 3),
        'Information Technology and Software Services',
        null),
    new School('University of Helsinki',
        new DateTime(2014, 9, 1),
        null,
        'Computer Science',
        'Algorithms, Data Analytics and Machine Learning')
  ];

  Map<String, String> logos = {
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
}

