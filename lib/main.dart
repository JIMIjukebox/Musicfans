import 'package:flutter/material.dart';

import 'app.dart';
import 'services/firebase_gateway.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseGateway.initializeIfEnabled();
  runApp(const BeatCardsApp());
}
