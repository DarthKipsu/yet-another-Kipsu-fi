class Event {
  static const EDUCATION = 'education';
  static const WORK = 'work';

  static get values => [EDUCATION, WORK];

  final int value;

  const Event._(this.value);
}
