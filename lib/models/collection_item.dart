class CollectionItem {
  const CollectionItem({
    required this.id,
    required this.userId,
    required this.beatCardId,
    required this.acquiredAt,
  });

  final String id;
  final String userId;
  final String beatCardId;
  final DateTime acquiredAt;
}
