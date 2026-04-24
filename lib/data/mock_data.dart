import '../models/artist.dart';
import '../models/beatcard.dart';
import '../models/beatid_profile.dart';
import '../models/collection_item.dart';
import '../models/drop.dart';
import '../models/user_model.dart';

const currentUser = UserModel(
  id: 'u_01',
  email: 'fan@beatopia.app',
  displayName: 'NOVA Collector',
);

const beatIdProfile = BeatIdProfile(
  userId: 'u_01',
  handle: '@nova.collects',
  favoriteGenres: ['Alt-R&B', 'Trap Soul', 'Afro Future'],
  totalCards: 12,
  city: 'Atlanta',
);

const artists = [
  Artist(
    id: 'a_01',
    name: 'KAI//NOVA',
    genre: 'Future Soul',
    imageUrl: 'https://picsum.photos/seed/artist1/900/900',
    monthlyListeners: 240000,
  ),
  Artist(
    id: 'a_02',
    name: 'LUNA VELVET',
    genre: 'Neo Trap',
    imageUrl: 'https://picsum.photos/seed/artist2/900/900',
    monthlyListeners: 410000,
  ),
];

const beatCards = [
  BeatCard(
    id: 'c_01',
    artistId: 'a_01',
    title: 'Midnight Echo #001',
    rarity: 'Legendary',
    coverUrl: 'https://picsum.photos/seed/card1/900/900',
    nfcEnabled: true,
    floorPrice: 320.0,
  ),
  BeatCard(
    id: 'c_02',
    artistId: 'a_02',
    title: 'Chrome Pulse #014',
    rarity: 'Rare',
    coverUrl: 'https://picsum.photos/seed/card2/900/900',
    nfcEnabled: true,
    floorPrice: 120.0,
  ),
  BeatCard(
    id: 'c_03',
    artistId: 'a_02',
    title: 'Afterlight #022',
    rarity: 'Epic',
    coverUrl: 'https://picsum.photos/seed/card3/900/900',
    nfcEnabled: false,
    floorPrice: 180.0,
  ),
];

final collectionItems = [
  CollectionItem(
    id: 'ci_01',
    userId: currentUser.id,
    beatCardId: 'c_01',
    acquiredAt: DateTime(2026, 2, 20),
  ),
  CollectionItem(
    id: 'ci_02',
    userId: currentUser.id,
    beatCardId: 'c_02',
    acquiredAt: DateTime(2026, 3, 4),
  ),
];

final drops = [
  Drop(
    id: 'd_01',
    artistId: 'a_01',
    title: 'Neon Heart Drop',
    releaseDate: DateTime(2026, 5, 1),
    totalCards: 500,
    description: 'Limited NFC run with holographic animation and unlockable stems.',
  ),
];

Artist artistById(String id) => artists.firstWhere((artist) => artist.id == id);
BeatCard cardById(String id) => beatCards.firstWhere((card) => card.id == id);
