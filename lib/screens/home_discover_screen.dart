import 'package:flutter/material.dart';

import '../data/mock_data.dart';
import '../models/engagement_event.dart';
import '../services/analytics_service.dart';
import '../widgets/beatcard_tile.dart';
import '../widgets/section_header.dart';
import 'card_detail_screen.dart';

class HomeDiscoverScreen extends StatefulWidget {
  const HomeDiscoverScreen({super.key});

  @override
  State<HomeDiscoverScreen> createState() => _HomeDiscoverScreenState();
}

class _HomeDiscoverScreenState extends State<HomeDiscoverScreen> {
  @override
  void initState() {
    super.initState();
    AnalyticsService.instance.screenView('home_discover');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Black Beatopia', style: Theme.of(context).textTheme.headlineSmall),
          Text('Discover AI-powered artist drops and rare music cards.'),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient: const LinearGradient(
                colors: [Color(0xFF4516A3), Color(0xFF00B9FF)],
              ),
            ),
            child: const Text('Next drop in 7 days • Neon Heart by KAI//NOVA'),
          ),
          const SizedBox(height: 24),
          const SectionHeader(title: 'Trending BeatCards™'),
          const SizedBox(height: 8),
          SizedBox(
            height: 282,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: beatCards.length,
              itemBuilder: (context, index) {
                final card = beatCards[index];
                final artist = artistById(card.artistId);
                return SizedBox(
                  width: 220,
                  child: BeatCardTile(
                    card: card,
                    artist: artist,
                    onTap: () {
                      AnalyticsService.instance.track(
                        EngagementEvent(
                          name: 'card_opened',
                          timestamp: DateTime.now(),
                          parameters: {'card_id': card.id},
                        ),
                      );

                      Navigator.pushNamed(
                        context,
                        CardDetailScreen.routeName,
                        arguments: card.id,
                      );
                    },
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
