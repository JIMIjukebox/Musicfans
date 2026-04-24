import 'package:flutter/material.dart';

import 'core/theme.dart';
import 'screens/artist_drop_screen.dart';
import 'screens/beatid_profile_screen.dart';
import 'screens/card_detail_screen.dart';
import 'screens/collection_screen.dart';
import 'screens/home_discover_screen.dart';

class BeatCardsApp extends StatefulWidget {
  const BeatCardsApp({super.key});

  @override
  State<BeatCardsApp> createState() => _BeatCardsAppState();
}

class _BeatCardsAppState extends State<BeatCardsApp> {
  int _selectedIndex = 0;

  final _pages = const [
    HomeDiscoverScreen(),
    CollectionScreen(),
    ArtistDropScreen(),
    BeatIdProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeatCards',
      debugShowCheckedModeBanner: false,
      theme: buildBeatopiaTheme(),
      routes: {
        CardDetailScreen.routeName: (_) => const CardDetailScreen(),
      },
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.explore_outlined),
              selectedIcon: Icon(Icons.explore),
              label: 'Discover',
            ),
            NavigationDestination(
              icon: Icon(Icons.style_outlined),
              selectedIcon: Icon(Icons.style),
              label: 'Collection',
            ),
            NavigationDestination(
              icon: Icon(Icons.album_outlined),
              selectedIcon: Icon(Icons.album),
              label: 'Drops',
            ),
            NavigationDestination(
              icon: Icon(Icons.badge_outlined),
              selectedIcon: Icon(Icons.badge),
              label: 'BeatID',
            ),
          ],
          onDestinationSelected: (index) => setState(() => _selectedIndex = index),
        ),
      ),
    );
  }
}
