import 'package:kipsu_fi/about/event.dart';
import 'package:kipsu_fi/about/timeline_displayable.dart';

class School extends TimelineDisplayable {
  String name;
  DateTime started;
  DateTime _graduated;
  String field;
  String specialization;
  String id;

  Event type = Event.EDUCATION;

  School(this.name, this.started, this._graduated, this.field, this.specialization, this.id);

  DateTime get ended => hasEnded ? _graduated : new DateTime.now();

  bool get hasEnded => _graduated != null;
}

