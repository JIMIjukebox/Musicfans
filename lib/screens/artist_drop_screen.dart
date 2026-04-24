import 'package:flutter/material.dart';

import '../data/mock_data.dart';

class ArtistDropScreen extends StatelessWidget {
  const ArtistDropScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final drop = drops.first;
    final artist = artistById(drop.artistId);

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Artist Drops', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 14),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(artist.imageUrl, height: 260, fit: BoxFit.cover),
          ),
          const SizedBox(height: 16),
          Text(drop.title, style: Theme.of(context).textTheme.titleLarge),
          Text('${artist.name} • Releases ${drop.releaseDate.month}/${drop.releaseDate.day}/${drop.releaseDate.year}'),
          const SizedBox(height: 10),
          Text(drop.description),
          const SizedBox(height: 16),
          Row(
            children: [
              _MetricChip(label: 'Supply', value: '${drop.totalCards}'),
              const SizedBox(width: 8),
              const _MetricChip(label: 'Access', value: 'NFC Priority'),
            ],
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () {},
            child: const Text('Notify Me for Drop (MVP placeholder)'),
          ),
        ],
      ),
    );
  }
}

class _MetricChip extends StatelessWidget {
  const _MetricChip({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF151827),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text('$label: $value'),
    );
  }
}
