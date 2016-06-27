import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/about/country.dart';

@Component(
    selector: 'world-map',
    templateUrl: 'world_component.html',
    styleUrls: const ['world_component.css'])
class WorldComponent implements OnInit {

  ngOnInit() {
    visited_countries.forEach((country) {
      final path = document.querySelector('#${country.id}');
      if (path != null) path.classes.add('visited');
    });
  }

  int get count => visited_countries.length;

  final List<Country> visited_countries = [
    new Country("FI", "Finland", [
        {
          "arrived": new DateTime(1985, 4, 28),
          "left": new DateTime(2010, 1, 14)
        },
        {
          "arrived": new DateTime(2010, 1, 16),
          "left": new DateTime(2010, 7, 10)
        },
        {
          "arrived": new DateTime(2010, 7, 11),
          "left": new DateTime(2010, 7, 20)
        },
        {
          "arrived": new DateTime(2010, 7, 26),
          "left": new DateTime(2011, 1, 16)
        },
        {
          "arrived": new DateTime(2011, 1, 23),
          "left": new DateTime(2011, 7, 23)
        },
        {
          "arrived": new DateTime(2011, 7, 30),
          "left": new DateTime(2011, 9, 4)
        },
        {
          "arrived": new DateTime(2011, 9, 6),
          "left": new DateTime(2012, 4, 7)
        },
        {
          "arrived": new DateTime(2012, 4, 13),
          "left": new DateTime(2012, 7, 15)
        },
        {
          "arrived": new DateTime(2012, 7, 18),
          "left": new DateTime(2012, 8, 19)
        },
        {
          "arrived": new DateTime(2012, 8, 20),
          "left": new DateTime(2013, 6, 3)
        },
        {
          "arrived": new DateTime(2013, 6, 3),
          "left": new DateTime(2013, 9, 27)
        },
        {
          "arrived": new DateTime(2013, 9, 29),
          "left": new DateTime(2014, 5, 2)
        },
        {
          "arrived": new DateTime(2014, 5, 2),
          "left": new DateTime(2014, 6, 20)
        },
        {
          "arrived": new DateTime(2014, 6, 21),
          "left": new DateTime(2014, 7, 17)
        },
        {
          "arrived": new DateTime(2014, 7, 18),
          "left": new DateTime(2015, 7, 4)
        },
        {
          "arrived": new DateTime(2015, 9, 26),
          "left": new DateTime(2016, 2, 22)
        },
        {
          "arrived": new DateTime(2016, 2, 24),
          "left": new DateTime(2016, 5, 14)
        }
    ]),
    new Country("SE", "Sweden", [
        {
          "arrived": new DateTime(2010, 1, 14),
          "left": new DateTime(2010, 1, 16)
        },
        {
          "arrived": new DateTime(2010, 7, 10),
          "left": new DateTime(2010, 7, 11)
        },
        {
          "arrived": new DateTime(2011, 9, 4),
          "left": new DateTime(2011, 9, 6)
        },
        {
          "arrived": new DateTime(2013, 6, 3),
          "left": new DateTime(2013, 6, 3)
        },
        {
          "arrived": new DateTime(2014, 6, 20),
          "left": new DateTime(2014, 6, 21)
        }
    ]),
    new Country("CH", "Switzerland", [
        {
          "arrived": new DateTime(2016, 5, 14),
          "left": new DateTime(2016, 6, 4)
        },
        {
          "arrived": new DateTime(2016, 6, 5),
          "left": new DateTime(2016, 6, 25)
        },
        {
          "arrived": new DateTime(2016, 6, 26),
          "left": new DateTime.now()
        }
    ]),
    new Country("NO", "Norway", [
        {
          "arrived": new DateTime(2010, 7, 20),
          "left": new DateTime(2010, 7, 26)
        }
    ]),
    new Country("EE", "Estonia", [
        {
          "arrived": new DateTime(2012, 8, 19),
          "left": new DateTime(2012, 8, 20)
        },
        {
          "arrived": new DateTime(2013, 9, 27),
          "left": new DateTime(2013, 9, 29)
        },
        {
          "arrived": new DateTime(2014, 5, 2),
          "left": new DateTime(2014, 5, 2)
        },
        {
          "arrived": new DateTime(2014, 7, 17),
          "left": new DateTime(2014, 7, 18)
        }
    ]),
    new Country("DK", "Denmark", [
        {
          "arrived": new DateTime(2012, 4, 7),
          "left": new DateTime(2012, 4, 7)
        },
        {
          "arrived": new DateTime(2012, 7, 15),
          "left": new DateTime(2012, 7, 15)
        }
    ]),
    new Country("GB", "United Kingdom", [
        {
          "arrived": new DateTime(2012, 7, 15),
          "left": new DateTime(2012, 7, 18)
        },
        {
          "arrived": new DateTime(2015, 8, 14),
          "left": new DateTime(2015, 8, 16)
        }
    ]),
    new Country("AT", "Austria", [
        {
          "arrived": new DateTime(2015, 7, 31),
          "left": new DateTime(2015, 8, 2)
        },
        {
          "arrived": new DateTime(2015, 8, 7),
          "left": new DateTime(2015, 8, 9)
        },
        {
          "arrived": new DateTime(2016, 2, 22),
          "left": new DateTime(2016, 2, 24)
        }
    ]),
    new Country("DE", "Germany", [
        {
          "arrived": new DateTime(2015, 7, 4),
          "left": new DateTime(2015, 7, 31)
        },
        {
          "arrived": new DateTime(2015, 8, 2),
          "left": new DateTime(2015, 8, 7)
        },
        {
          "arrived": new DateTime(2015, 8, 9),
          "left": new DateTime(2015, 8, 14)
        },
        {
          "arrived": new DateTime(2015, 8, 16),
          "left": new DateTime(2015, 9, 26)
        }
    ]),
    new Country("GR", "Greece", [
        {
          "arrived": new DateTime(2011, 7, 23),
          "left": new DateTime(2011, 7, 30)
        }
    ]),
    new Country("IT", "Italy", [
        {
          "arrived": new DateTime(2012, 4, 9),
          "left": new DateTime(2012, 4, 13)
        }
    ]),
    new Country("ES", "Spain", [
        {
          "arrived": new DateTime(2011, 1, 16),
          "left": new DateTime(2011, 1, 23)
        }
    ]),
    new Country("LI", "Liechenstein", [
        {
          "arrived": new DateTime(2016, 6, 4),
          "left": new DateTime(2016, 6, 5)
        }
    ]),
    new Country("FR", "France", [
        {
          "arrived": new DateTime(2016, 6, 25),
          "left": new DateTime(2016, 6, 26)
        }
    ])
  ];
}

