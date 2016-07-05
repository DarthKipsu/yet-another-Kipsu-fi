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
    var currentY = 0;
    for (var i = 0; i < events.length && i < rectangles.length; i++) {
      currentY = getY(currentY, i, i - 1);
      rectangles[i].attributes['x'] = events[i].xFrom(start);
      rectangles[i].attributes['y'] = currentY;
      rectangles[i].attributes['width'] = events[i].width;
      rectangles[i].attributes['height'] = height;
      rectangles[i].classes.addAll(events[i].name.toLowerCase().split(' '));
    }
  }

  int getY(currentY, int a, int b) {
    if (b < 0) return currentY;
    if (events[a].simultaneouslyWith(events[b])) return currentY + (height * 1.5).floor();
    if (currentY > 0) return getY(currentY - (height * 1.5).floor(), a, b - 1);
    return currentY;
  }
}

