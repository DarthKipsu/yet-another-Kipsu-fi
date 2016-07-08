import 'package:kipsu_fi/about/event.dart';

abstract class TimelineDisplayable {
  DateTime get started;
  DateTime get ended;
  bool get hasEnded;
  String get id;
  Event get type;

  int get width => ended.difference(started).inDays;

  int xFrom(DateTime timelineStart) => started.difference(timelineStart).inDays;

  bool simultaneouslyWith(TimelineDisplayable event) =>
    started.isBefore(event.ended) && ended.isAfter(event.started);

  String render(DateTime date) => '${date.day}.${date.month}.${date.year}';
}
