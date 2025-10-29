class Article {
  final String? image;

  final String? title;

  final String? description;

  final String? author;

  final String? source;

  final DateTime? publishAt;

  Article({
    required this.image,
    required this.title,
    required this.description,
    required this.author,
    required this.publishAt,
    this.source,
  });

  static List<Article> testArticles = [
    Article(
      image: 'https://images.unsplash.com/photo-1522199710521-72d69614c702',
      title: 'AI Breakthrough: OpenAI Releases GPT-5',
      description:
          'OpenAI has announced the release of GPT-5, a major leap forward in natural language understanding and reasoning. Experts say it could revolutionize productivity and education.',
      author: 'Tech Times',
      publishAt: DateTime(2025, 10, 25),
      source: 'BBC News',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
      title: 'Climate Action: Egypt Launches New Solar Project',
      description:
          'A new large-scale solar farm has been inaugurated in Aswan, aiming to supply clean energy to more than 200,000 homes and reduce carbon emissions by 30%.',
      author: 'Green Planet News',
      publishAt: DateTime(2025, 10, 22),
      source: 'CNN News',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1516117172878-fd2c41f4a759',
      title: 'Sports Update: Egypt Wins African Cup',
      description:
          'In a thrilling final match, Egypt secured the African Cup after a 2-1 victory, marking their record-breaking 8th title in the tournament’s history.',
      author: 'Sports Daily',
      publishAt: DateTime(2025, 10, 20),
      source: 'CNN News',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1522120690034-2b86b8a54a17',
      title: 'Startup Spotlight: Cairo’s Tech Scene Booming',
      description:
          'Cairo has become a regional hub for startups, with new companies focusing on fintech, education, and clean energy attracting international investors.',
      author: 'Startup Digest',
      publishAt: DateTime(2025, 10, 18),
      source: 'ABC News',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
      title: 'Travel Feature: Exploring the Red Sea’s Hidden Gems',
      description:
          'From coral reefs to crystal-clear lagoons, the Red Sea coastline is becoming a must-visit destination for divers and eco-tourists alike.',
      author: 'Travel & Leisure',
      publishAt: DateTime(2025, 10, 15),
      source: 'Ary News',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1522199710521-72d69614c702',
      title: 'AI Breakthrough: OpenAI Releases GPT-5',
      description:
          'OpenAI has announced the release of GPT-5, a major leap forward in natural language understanding and reasoning. Experts say it could revolutionize productivity and education.',
      author: 'Tech Times',
      publishAt: DateTime(2025, 10, 25),
      source: 'BBC News',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
      title: 'Climate Action: Egypt Launches New Solar Project',
      description:
          'A new large-scale solar farm has been inaugurated in Aswan, aiming to supply clean energy to more than 200,000 homes and reduce carbon emissions by 30%.',
      author: 'Green Planet News',
      publishAt: DateTime(2025, 10, 22),
      source: 'CNN News',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
      title: 'Travel Feature: Exploring the Red Sea’s Hidden Gems',
      description:
          'From coral reefs to crystal-clear lagoons, the Red Sea coastline is becoming a must-visit destination for divers and eco-tourists alike.',
      author: 'Travel & Leisure',
      publishAt: DateTime(2025, 10, 15),
      source: 'Aftenposten',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1522199710521-72d69614c702',
      title: 'AI Breakthrough: OpenAI Releases GPT-5',
      description:
          'OpenAI has announced the release of GPT-5, a major leap forward in natural language understanding and reasoning. Experts say it could revolutionize productivity and education.',
      author: 'Tech Times',
      publishAt: DateTime(2025, 10, 25),
      source: 'BBC News',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
      title: 'Climate Action: Egypt Launches New Solar Project',
      description:
          'A new large-scale solar farm has been inaugurated in Aswan, aiming to supply clean energy to more than 200,000 homes and reduce carbon emissions by 30%.',
      author: 'Green Planet News',
      publishAt: DateTime(2025, 10, 22),
      source: 'CNN News',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
      title: 'Travel Feature: Exploring the Red Sea’s Hidden Gems',
      description:
          'From coral reefs to crystal-clear lagoons, the Red Sea coastline is becoming a must-visit destination for divers and eco-tourists alike.',
      author: 'Travel & Leisure',
      publishAt: DateTime(2025, 10, 15),
      source: 'Ary News',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1522199710521-72d69614c702',
      title: 'AI Breakthrough: OpenAI Releases GPT-5',
      description:
          'OpenAI has announced the release of GPT-5, a major leap forward in natural language understanding and reasoning. Experts say it could revolutionize productivity and education.',
      author: 'Tech Times',
      publishAt: DateTime(2025, 10, 25),
      source: 'Aftenposten',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
      title: 'Climate Action: Egypt Launches New Solar Project',
      description:
          'A new large-scale solar farm has been inaugurated in Aswan, aiming to supply clean energy to more than 200,000 homes and reduce carbon emissions by 30%.',
      author: 'Green Planet News',
      publishAt: DateTime(2025, 10, 22),
      source: 'CNN News',
    ),
    Article(
      image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
      title: 'Travel Feature: Exploring the Red Sea’s Hidden Gems',
      description:
          'From coral reefs to crystal-clear lagoons, the Red Sea coastline is becoming a must-visit destination for divers and eco-tourists alike.',
      author: 'Travel & Leisure',
      publishAt: DateTime(2025, 10, 15),
      source: 'Ary News',
    ),
  ];
}
