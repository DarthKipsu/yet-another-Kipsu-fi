class Language {
  static const JAVASCRIPT = "JavaScript";
  static const JQUERY = "jQuery";
  static const NODEJS = "NodeJs";

  static get values => [JAVASCRIPT];

  final int value;

  const Language._(this.value);
}

