import 'package:flutter/material.dart';

import '../data/mock_data.dart';

class CardDetailScreen extends StatelessWidget {
  const CardDetailScreen({super.key});

  static const routeName = '/card-detail';

  @override
  Widget build(BuildContext context) {
    final cardId = ModalRoute.of(context)?.settings.arguments as String? ?? beatCards.first.id;
    final card = cardById(cardId);
    final artist = artistById(card.artistId);

    return Scaffold(
      appBar: AppBar(title: const Text('Card Detail')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(card.coverUrl, height: 320, fit: BoxFit.cover),
          ),
          const SizedBox(height: 16),
          Text(card.title, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 6),
          Text('${artist.name} • ${artist.genre}'),
          const SizedBox(height: 20),
          _DetailRow(label: 'Rarity', value: card.rarity),
          _DetailRow(label: 'NFC Enabled', value: card.nfcEnabled ? 'Yes' : 'No'),
          _DetailRow(label: 'Floor Price', value: '\$${card.floorPrice.toStringAsFixed(2)}'),
          _DetailRow(label: 'Artist Listeners', value: '${artist.monthlyListeners ~/ 1000}K / month'),
          const SizedBox(height: 20),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
            label: const Text('Place Offer (MVP placeholder)'),
          ),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(child: Text(label, style: Theme.of(context).textTheme.bodyMedium)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
