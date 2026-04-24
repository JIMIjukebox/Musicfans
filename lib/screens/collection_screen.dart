import 'package:flutter/material.dart';

import '../data/mock_data.dart';
import '../widgets/beatcard_tile.dart';
import 'card_detail_screen.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('My BeatCard™ Collection', style: TextStyle(fontSize: 24)),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: collectionItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.70,
              ),
              itemBuilder: (context, index) {
                final owned = collectionItems[index];
                final card = cardById(owned.beatCardId);
                final artist = artistById(card.artistId);
                return BeatCardTile(
                  card: card,
                  artist: artist,
                  onTap: () => Navigator.pushNamed(
                    context,
                    CardDetailScreen.routeName,
                    arguments: card.id,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
