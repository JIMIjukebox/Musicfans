class BeatIdProfile {
  const BeatIdProfile({
    required this.userId,
    required this.handle,
    required this.favoriteGenres,
    required this.totalCards,
    required this.city,
  });

  final String userId;
  final String handle;
  final List<String> favoriteGenres;
  final int totalCards;
  final String city;
}
