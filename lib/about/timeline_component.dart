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
  List<TimelineDisplayable> workplaces;

  @Input()
  List<TimelineDisplayable> schools;

  @Input()
  DateTime start;

  ngOnInit() {
    setTimeLineViewBox();
    new Timer(const Duration(milliseconds: 0), createSchoolRectangles);
  }

  void setTimeLineViewBox() {
    final svgViewBox = '0 0 ${new DateTime.now().difference(start).inDays} 500';
    final timeline = document.querySelector('.timeline');
    if (timeline != null) timeline.attributes['viewBox'] = svgViewBox;
  }

  void createSchoolRectangles() {
    final rectangles = document.querySelectorAll('.education');
    for (var i = 0; i < schools.length && i < rectangles.length; i++) {
      rectangles[i].attributes['x'] = schools[i].xFrom(start);
      rectangles[i].attributes['width'] = schools[i].width;
    }
  }
}

