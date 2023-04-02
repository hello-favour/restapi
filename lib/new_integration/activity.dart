class Activity {
  final String activity;
  final String type;
  final int participants;
  final int price;
  final String link;
  final String key;
  final int accessibility;

  Activity({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  factory Activity.fromMap(Map<String, dynamic> map) {
    return Activity(
      activity: map["activity"] ?? "",
      type: map["type"] ?? "",
      participants: map["participants"] ?? "",
      price: map["price"] ?? 0,
      link: map["link"] ?? "",
      key: map["key"] ?? "",
      accessibility: map["accessibility"] ?? "",
    );
  }
}
