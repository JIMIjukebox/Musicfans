class BeatCard {
  const BeatCard({
    required this.id,
    required this.artistId,
    required this.title,
    required this.rarity,
    required this.coverUrl,
    required this.nfcEnabled,
    required this.floorPrice,
  });

  final String id;
  final String artistId;
  final String title;
  final String rarity;
  final String coverUrl;
  final bool nfcEnabled;
  final double floorPrice;
}
