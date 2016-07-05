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

  static const height = 50;

  ngOnInit() {
    setTimeLineViewBox();
    new Timer(const Duration(milliseconds: 0), createSchoolRectangles);
  }

  void setTimeLineViewBox() {
    final svgViewBox = '0 0 ${new DateTime.now().difference(start).inDays} 2000';
    final timeline = document.querySelector('.timeline');
    if (timeline != null) timeline.attributes['viewBox'] = svgViewBox;
  }

  void createSchoolRectangles() {
    events.sort((a, b) => a.started.isBefore(b.started) ? -1 : 1);
    final rectangles = document.querySelectorAll('.event');
    var levels = new Map<int, DateTime>();
    for (var i = 0; i < events.length && i < rectangles.length; i++) {
      rectangles[i].attributes['x'] = events[i].xFrom(start);
      rectangles[i].attributes['y'] = getY(levels, events[i]);
      rectangles[i].attributes['width'] = events[i].width;
      rectangles[i].attributes['height'] = height;
      rectangles[i].classes.addAll(events[i].name.toLowerCase().split(' '));
    }
  }

  int getY(levels, TimelineDisplayable event) {
    for (var i = 0; i < levels.length; i++) {
      if (levels[i].isBefore(event.started)) {
        levels[i] = event.ended;
        return (i * height * 1.5).floor();
      }
    }
    levels[levels.length] = event.ended;
    return ((levels.length - 1) * height * 1.5).floor();
  }
}

