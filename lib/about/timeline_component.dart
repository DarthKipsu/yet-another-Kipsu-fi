import 'dart:async';
import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/about/school.dart';
import 'package:kipsu_fi/about/timeline_displayable.dart';
import 'package:kipsu_fi/about/work.dart';

@Component(
    selector: 'timeline',
    templateUrl: 'timeline_component.html',
    styleUrls: const ['timeline_component.css'])
class TimelineComponent implements OnInit {
  @Input()
  List<TimelineDisplayable> events;

  @Input()
  DateTime start;

  static const height = 100;

  ngOnInit() {
    setTimeLineViewBox(200);
    new Timer(const Duration(milliseconds: 0), applyEventFunctionality);
  }

  void setTimeLineViewBox(int height) {
    final svgViewBox = '0 0 ${new DateTime.now().difference(start).inDays} $height';
    final timeline = document.querySelector('.timeline');
    if (timeline != null) timeline.attributes['viewBox'] = svgViewBox;
  }

  void applyEventFunctionality() {
    events.sort((a, b) => a.started.isBefore(b.started) ? -1 : 1);
    final rectangles = document.querySelectorAll('.event');
    var levels = new Map<int, DateTime>();
    for (var i = 0; i < events.length && i < rectangles.length; i++) {
      rectangles[i].attributes['x'] = events[i].xFrom(start);
      rectangles[i].attributes['y'] = getY(levels, events[i]);
      rectangles[i].attributes['width'] = events[i].width;
      rectangles[i].attributes['height'] = height;
      rectangles[i].classes.add(events[i].type);
    }
    setTimeLineViewBox(levelY(levels.length));

    events.forEach((event) {
      final elements = document.querySelectorAll('.${event.id}');
      if (elements.length == 2) {
        elements[0].onMouseOver.listen(_tooltipDisplay(elements[1], true));
        elements[0].onMouseLeave.listen(_tooltipDisplay(elements[1], false));
      }
    });
  }

  dynamic _tooltipDisplay(Element tooltip, bool display) => (_) {
    tooltip.style.display = display ? 'block' : 'none';
  };

  int getY(levels, TimelineDisplayable event) {
    for (var i = 0; i < levels.length; i++) {
      if (levels[i].isBefore(event.started)) {
        levels[i] = event.ended;
        return levelY(i);
      }
    }
    levels[levels.length] = event.ended;
    return levelY(levels.length - 1);
  }

  int levelY(int level) => (level * height * 1.25).floor();
}

