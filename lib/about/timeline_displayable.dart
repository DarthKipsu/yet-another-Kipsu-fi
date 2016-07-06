import 'package:kipsu_fi/about/event.dart';

abstract class TimelineDisplayable {
  DateTime get started;
  DateTime get ended;
  int get width;
  bool get hasEnded;
  String get id;
  Event get type;

  int xFrom(DateTime timelineStart);
  bool simultaneouslyWith(TimelineDisplayable event);
}
