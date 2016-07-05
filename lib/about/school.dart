import 'package:kipsu_fi/about/timeline_displayable.dart';

class School implements TimelineDisplayable {
  String name;
  DateTime started;
  DateTime _graduated;
  String field;
  String specialization;

  School(this.name, this.started, this._graduated, this.field, this.specialization);

  DateTime get graduated => isGraduated ? _graduated : new DateTime.now();

  bool get isGraduated => _graduated != null;

  int get width => graduated.difference(started).inDays;

  int xFrom(DateTime timelineStart) => started.difference(timelineStart).inDays;
}

