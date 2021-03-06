import 'package:kipsu_fi/about/event.dart';
import 'package:kipsu_fi/about/timeline_displayable.dart';

class Work extends TimelineDisplayable {
  String name;
  DateTime started;
  DateTime _ended;
  String position;
  String id;
  
  Event type = Event.WORK;

  Work(this.name, this.started, this._ended, this.position, this.id);

  DateTime get ended => hasEnded ? _ended : new DateTime.now();

  bool get hasEnded => _ended != null;
}

