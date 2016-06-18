class Article {
  final String id;
  final String title;
  final String subtitle;
  final DateTime date;
  final Type component;

  Article(this.id,
      this.title,
      this.subtitle,
      this.date,
      this.component);

  String get formattedDate => '${date.day}.${date.month}.${date.year}';
}

