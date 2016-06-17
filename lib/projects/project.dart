class Project {
  final String id;
  final String title;
  final String subtitle;
  final DateTime date;
  final List<Language> languages;
  final Map<String, String> links;
  final Type component;

  Project(this.id,
      this.title,
      this.subtitle,
      this.date,
      this.languages,
      this.links,
      this.component);

  String get formattedDate => '${date.day}.${date.month}.${date.year}';

  String get githubLink => links['GitHub'];
}

