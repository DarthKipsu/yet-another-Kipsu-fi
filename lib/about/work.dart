import 'package:kipsu_fi/about/event.dart';
import 'package:kipsu_fi/about/timeline_displayable.dart';

class Work implements TimelineDisplayable {
  String name;
  DateTime started;
  DateTime _ended;
  String position;
  Event type = Event.WORK;

  Work(this.name, this.started, this._ended, this.position);

  DateTime get ended => hasEnded ? _ended : new DateTime.now();

  bool get hasEnded => _ended != null;

  int get width => ended.difference(started).inDays;

  int xFrom(DateTime timelineStart) => started.difference(timelineStart).inDays;

  bool simultaneouslyWith(TimelineDisplayable event) =>
    started.isBefore(event.ended) && ended.isAfter(event.started);
}

