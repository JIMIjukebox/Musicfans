import 'package:flutter/material.dart';

import '../models/artist.dart';
import '../models/beatcard.dart';

class BeatCardTile extends StatelessWidget {
  const BeatCardTile({
    required this.card,
    required this.artist,
    required this.onTap,
    super.key,
  });

  final BeatCard card;
  final Artist artist;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.1,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(card.coverUrl, fit: BoxFit.cover),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black.withValues(alpha: .55),
                      ),
                      child: Text(card.rarity, style: const TextStyle(fontSize: 11)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(card.title, maxLines: 1, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 4),
                  Text(
                    artist.name,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      if (card.nfcEnabled)
                        const Icon(Icons.nfc, size: 16, color: Color(0xFF00B9FF)),
                      const Spacer(),
                      Text('\$${card.floorPrice.toStringAsFixed(0)}'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
