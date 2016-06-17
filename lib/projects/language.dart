class Language {
  static const JAVASCRIPT = "JavaScript";
  static const HTML = "HTML";

  static get values => [JAVASCRIPT];

  final int value;

  const Language._(this.value);
}

