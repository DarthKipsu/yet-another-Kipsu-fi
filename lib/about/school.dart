import 'package:kipsu_fi/about/event.dart';
import 'package:kipsu_fi/about/timeline_displayable.dart';

class School implements TimelineDisplayable {
  String name;
  DateTime started;
  DateTime _graduated;
  String field;
  String specialization;
  Event type = Event.EDUCATION;

  School(this.name, this.started, this._graduated, this.field, this.specialization);

  DateTime get ended => hasEnded ? _graduated : new DateTime.now();

  bool get hasEnded => _graduated != null;

  int get width => ended.difference(started).inDays;

  int xFrom(DateTime timelineStart) => started.difference(timelineStart).inDays;

  bool simultaneouslyWith(TimelineDisplayable event) =>
    started.isBefore(event.ended) && ended.isAfter(event.started);
}

