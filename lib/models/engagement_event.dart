class EngagementEvent {
  const EngagementEvent({
    required this.name,
    required this.timestamp,
    required this.parameters,
  });

  final String name;
  final DateTime timestamp;
  final Map<String, dynamic> parameters;
}
