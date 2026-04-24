class Drop {
  const Drop({
    required this.id,
    required this.artistId,
    required this.title,
    required this.releaseDate,
    required this.totalCards,
    required this.description,
  });

  final String id;
  final String artistId;
  final String title;
  final DateTime releaseDate;
  final int totalCards;
  final String description;
}
