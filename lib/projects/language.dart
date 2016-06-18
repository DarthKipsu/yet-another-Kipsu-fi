class Language {
  static const EXPRESS = "Express.js";
  static const JAVA = "Java";
  static const JAVASCRIPT = "JavaScript";
  static const JQUERY = "jQuery";
  static const LEJOS = "LeJOS";
  static const NODEJS = "Node.js";
  static const RUBY_ON_RAILS = "Ruby on Rails";
  static const SASS = "Sass";

  static get values => [JAVASCRIPT];

  final int value;

  const Language._(this.value);
}

