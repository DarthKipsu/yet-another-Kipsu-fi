import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/about/country.dart';

@Component(
    selector: 'world-map',
    templateUrl: 'world_component.html',
    styleUrls: const ['world_component.css'])
class WorldComponent implements OnInit {
  @Input()
  List<Country> visited_countries;

  ngOnInit() {
    visited_countries.forEach((country) {
      final path = document.querySelector('#${country.id}');
      if (path != null) {
        path.classes.add('visited');
        path.onMouseOver.listen(_tooltipOpacity(country.id, 1));
        path.onMouseLeave.listen(_tooltipOpacity(country.id, 0));
      }
    });
  }

  int get count => visited_countries.length;

  dynamic _tooltipOpacity(String id, int opacity) => (_) {
    final tooltip = document.querySelector('.tooltip.$id');
    if (tooltip != null) tooltip.style.opacity = '$opacity';
  };

  String timeSpent(String countryId) {
    final country = visited_countries.where((c) => c.id == countryId).first;
    if (country != null) {
      final days = country.visited.fold(0,
          (prevValue, c) => prevValue + c['left'].difference(c['arrived']).inDays);
      if (days < 1) return 'less than a day';
      if (days < 7) return '$days days';
      if (days < 365) {
        final weeks = (days / 7).floor();
        final extraDays = days % 7;
        return extraDays == 0 ? '$weeks weeks' : '$weeks weeks and $extraDays days';
      }
      final years = (days / 365).floor();
      final weeks = (days % 365 / 7).floor();
      return weeks < 1 ? '$years years' : '$years years and $weeks weeks';
    }
    return 'unknown time';
  }
}

