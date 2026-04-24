class Artist {
  const Artist({
    required this.id,
    required this.name,
    required this.genre,
    required this.imageUrl,
    required this.monthlyListeners,
  });

  final String id;
  final String name;
  final String genre;
  final String imageUrl;
  final int monthlyListeners;
}
