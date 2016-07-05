import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/about/country.dart';
import 'package:kipsu_fi/about/my_languages_component.dart';
import 'package:kipsu_fi/about/school.dart';
import 'package:kipsu_fi/about/timeline_component.dart';
import 'package:kipsu_fi/about/timeline_displayable.dart';
import 'package:kipsu_fi/about/work.dart';
import 'package:kipsu_fi/about/world_component.dart';
import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'about-me',
    templateUrl: 'about_component.html',
    styleUrls: const ['about_component.css', '../content.css'],
    directives: const [MyLanguagesComponent, TimelineComponent, WorldComponent])
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
  
  final DateTime timelineStart = new DateTime(2007, 8, 20);

  final List<TimelineDisplayable> timelineEvents = [
    new Work('Google',
        new DateTime(2016, 5, 6),
        new DateTime(2016, 8, 26),
        'Software Engineering Intern'),
    new Work('University of Helsinki',
        new DateTime(2015, 9, 1),
        new DateTime(2016, 5, 13),
        'Teaching Assistant'),
    new Work('Google',
        new DateTime(2015, 7, 6),
        new DateTime(2015, 9, 25),
        'Software Engineering STEP Intern'),
    new Work('Futurice',
        new DateTime(2015, 5, 4),
        new DateTime(2015, 6, 26),
        'Software Developer'),
    new School('Reactor academy',
        new DateTime(2015, 3, 3),
        new DateTime(2015, 6, 3),
        'Information Technology and Software Services',
        null),
    new Work('University of Helsinki',
        new DateTime(2014, 9, 1),
        new DateTime(2015, 5, 1),
        'Programming Workshop Tutor'),
    new School('University of Helsinki',
        new DateTime(2014, 9, 1),
        null,
        'Computer Science',
        'Algorithms, Data Analytics and Machine Learning'),
    new Work('Sito',
        new DateTime(2015, 3, 16),
        new DateTime(2015, 4, 30),
        'Younger Designer'),
    new School('Lahti University of Applied Sciences',
        new DateTime(2012, 9, 3),
        new DateTime(2015, 3, 16),
        'Environmental Engineering',
        'Urban planning'),
    new Work('Sito',
        new DateTime(2008, 2, 28),
        new DateTime(2015, 3, 16),
        'Planning Assistant'),
    new Work('Arkkitehdit NRT',
        new DateTime(2009, 3, 2),
        new DateTime(2009, 5, 1),
        'Planning Assistant Trainee'),
    new School('Helsinki City College of Technology',
        new DateTime(2007, 8, 27),
        new DateTime(2009, 5, 29),
        'Technical Drawing',
        'Infrastructure planning')
  ];

  final Map<String, String> logos = {
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

  final List<Country> visitedCountries = [
    new Country("FI", "Finland", [
        { "arrived": new DateTime(1985, 4, 28), "left": new DateTime(2010, 1, 14) },
        { "arrived": new DateTime(2010, 1, 16), "left": new DateTime(2010, 7, 10) },
        { "arrived": new DateTime(2010, 7, 11), "left": new DateTime(2010, 7, 20) },
        { "arrived": new DateTime(2010, 7, 26), "left": new DateTime(2011, 1, 16) },
        { "arrived": new DateTime(2011, 1, 23), "left": new DateTime(2011, 7, 23) },
        { "arrived": new DateTime(2011, 7, 30), "left": new DateTime(2011, 9, 4) },
        { "arrived": new DateTime(2011, 9, 6), "left": new DateTime(2012, 4, 7) },
        { "arrived": new DateTime(2012, 4, 13), "left": new DateTime(2012, 7, 15) },
        { "arrived": new DateTime(2012, 7, 18), "left": new DateTime(2012, 8, 19) },
        { "arrived": new DateTime(2012, 8, 20), "left": new DateTime(2013, 6, 3) },
        { "arrived": new DateTime(2013, 6, 3), "left": new DateTime(2013, 9, 27) },
        { "arrived": new DateTime(2013, 9, 29), "left": new DateTime(2014, 5, 2) },
        { "arrived": new DateTime(2014, 5, 2), "left": new DateTime(2014, 6, 20) },
        { "arrived": new DateTime(2014, 6, 21), "left": new DateTime(2014, 7, 17) },
        { "arrived": new DateTime(2014, 7, 18), "left": new DateTime(2015, 7, 4) },
        { "arrived": new DateTime(2015, 9, 26), "left": new DateTime(2016, 2, 22) },
        { "arrived": new DateTime(2016, 2, 24), "left": new DateTime(2016, 5, 14) }
    ]),
    new Country("SE", "Sweden", [
        { "arrived": new DateTime(2010, 1, 14), "left": new DateTime(2010, 1, 16) },
        { "arrived": new DateTime(2010, 7, 10), "left": new DateTime(2010, 7, 11) },
        { "arrived": new DateTime(2011, 9, 4), "left": new DateTime(2011, 9, 6) },
        { "arrived": new DateTime(2013, 6, 3), "left": new DateTime(2013, 6, 3) },
        { "arrived": new DateTime(2014, 6, 20), "left": new DateTime(2014, 6, 21) }
    ]),
    new Country("CH", "Switzerland", [
        { "arrived": new DateTime(2016, 5, 14), "left": new DateTime(2016, 6, 4) },
        { "arrived": new DateTime(2016, 6, 5), "left": new DateTime(2016, 6, 25) },
        { "arrived": new DateTime(2016, 6, 26), "left": new DateTime.now() }
    ]),
    new Country("NO", "Norway", [
        { "arrived": new DateTime(2010, 7, 20), "left": new DateTime(2010, 7, 26) }
    ]),
    new Country("EE", "Estonia", [
        { "arrived": new DateTime(2012, 8, 19), "left": new DateTime(2012, 8, 20) },
        { "arrived": new DateTime(2013, 9, 27), "left": new DateTime(2013, 9, 29) },
        { "arrived": new DateTime(2014, 5, 2), "left": new DateTime(2014, 5, 2) },
        { "arrived": new DateTime(2014, 7, 17), "left": new DateTime(2014, 7, 18) }
    ]),
    new Country("DK", "Denmark", [
        { "arrived": new DateTime(2012, 4, 7), "left": new DateTime(2012, 4, 7) },
        { "arrived": new DateTime(2012, 7, 15), "left": new DateTime(2012, 7, 15) }
    ]),
    new Country("GB", "United Kingdom", [
        { "arrived": new DateTime(2012, 7, 15), "left": new DateTime(2012, 7, 18) },
        { "arrived": new DateTime(2015, 8, 14), "left": new DateTime(2015, 8, 16) }
    ]),
    new Country("AT", "Austria", [
        { "arrived": new DateTime(2015, 7, 31), "left": new DateTime(2015, 8, 2) },
        { "arrived": new DateTime(2015, 8, 7), "left": new DateTime(2015, 8, 9) },
        { "arrived": new DateTime(2016, 2, 22), "left": new DateTime(2016, 2, 24) }
    ]),
    new Country("DE", "Germany", [
        { "arrived": new DateTime(2015, 7, 4), "left": new DateTime(2015, 7, 31) },
        { "arrived": new DateTime(2015, 8, 2), "left": new DateTime(2015, 8, 7) },
        { "arrived": new DateTime(2015, 8, 9), "left": new DateTime(2015, 8, 14) },
        { "arrived": new DateTime(2015, 8, 16), "left": new DateTime(2015, 9, 26) }
    ]),
    new Country("GR", "Greece", [
        { "arrived": new DateTime(2011, 7, 23), "left": new DateTime(2011, 7, 30) }
    ]),
    new Country("IT", "Italy", [
        { "arrived": new DateTime(2012, 4, 9), "left": new DateTime(2012, 4, 13) }
    ]),
    new Country("ES", "Spain", [
        { "arrived": new DateTime(2011, 1, 16), "left": new DateTime(2011, 1, 23) }
    ]),
    new Country("LI", "Liechenstein", [
        { "arrived": new DateTime(2016, 6, 4), "left": new DateTime(2016, 6, 5) }
    ]),
    new Country("FR", "France", [
        { "arrived": new DateTime(2016, 6, 25), "left": new DateTime(2016, 6, 26) }
    ])
  ];

}

