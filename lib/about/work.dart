import 'package:kipsu_fi/about/timeline_displayable.dart';

class Work implements TimelineDisplayable {
  String name;
  DateTime started;
  DateTime _ended;
  String position;

  Work(this.name, this.started, this._ended, this.position);

  DateTime get ended => isCurrentJob ? new DateTime.now() : _ended;

  bool get isCurrentJob => _ended == null;

  int get width => ended.difference(started).inDays;

  int xFrom(DateTime timelineStart) => started.difference(timelineStart).inDays;
}

