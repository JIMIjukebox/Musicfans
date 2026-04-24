import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';

import '../models/engagement_event.dart';
import 'firebase_gateway.dart';

class AnalyticsService {
  AnalyticsService._();

  static final instance = AnalyticsService._();

  FirebaseAnalytics? get _analytics =>
      FirebaseGateway.useFirebase ? FirebaseAnalytics.instance : null;

  Future<void> track(EngagementEvent event) async {
    debugPrint('[Analytics] ${event.name}: ${event.parameters}');
    await _analytics?.logEvent(name: event.name, parameters: event.parameters);
  }

  Future<void> screenView(String screenName) => track(
        EngagementEvent(
          name: 'screen_view_custom',
          timestamp: DateTime.now(),
          parameters: {'screen_name': screenName},
        ),
      );
}
