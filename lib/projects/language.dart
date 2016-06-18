class Language {
  static const CLOJURE = 'Clojure';
  static const CLOJURESCRIPT = 'ClojureScript';
  static const EXPRESS = 'Express.js';
  static const JAVA = 'Java';
  static const JAVASCRIPT = 'JavaScript';
  static const JQUERY = 'jQuery';
  static const LEJOS = 'LeJOS';
  static const LESS = 'Less';
  static const NODEJS = 'Node.js';
  static const POSTGRESQL = 'PostgreSQL';
  static const RUBY_ON_RAILS = 'Ruby on Rails';
  static const SASS = 'Sass';
  static const SQLITE = 'SQLite';

  static get values => [JAVASCRIPT];

  final int value;

  const Language._(this.value);
}

