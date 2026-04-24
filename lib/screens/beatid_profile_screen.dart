import 'package:flutter/material.dart';

import '../data/mock_data.dart';

class BeatIdProfileScreen extends StatelessWidget {
  const BeatIdProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('BeatID™ Profile', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF101322),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(currentUser.displayName, style: Theme.of(context).textTheme.titleLarge),
                Text(beatIdProfile.handle),
                const SizedBox(height: 10),
                Text('City: ${beatIdProfile.city}'),
                Text('Cards Owned: ${beatIdProfile.totalCards}'),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 8,
                  children: beatIdProfile.favoriteGenres
                      .map((genre) => Chip(label: Text(genre)))
                      .toList(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            title: const Text('Top engagement this week'),
            subtitle: const Text('17 card views • 4 wishlists • 2 drop reminders'),
            trailing: const Icon(Icons.insights),
            tileColor: const Color(0xFF131728),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          ),
        ],
      ),
    );
  }
}
