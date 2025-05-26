class ServiceCardListModel {
  final List<ServiceCardModel> cards;

  ServiceCardListModel({required this.cards});

  factory ServiceCardListModel.fromJson(Map<String, dynamic> json) {
    List<ServiceCardModel> cards = (json['cards'] as List<dynamic>)
        .map((item) => ServiceCardModel.fromJson(item))
        .toList();

    return ServiceCardListModel(cards: cards);
  }

  Map<String, dynamic> toJson() {
    return {
      'cards': cards.map((card) => card.toJson()).toList(),
    };
  }
}

class ServiceCardModel {
  final String title;
  final String subtitle;
  final String description;
  final String icon_path;
  final String image_path;
  final int position;

  ServiceCardModel({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.icon_path,
    required this.image_path,
    required this.position,
  });

  factory ServiceCardModel.fromJson(Map<String, dynamic> json) {
    return ServiceCardModel(
      title: json['title'] ?? '',
      subtitle: json['subtitle'] ?? '',
      description: json['description'] ?? '',
      icon_path: json['icon_path'] ?? '',
      image_path: json['image_path'] ?? '',
      position: json['position'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'description': description,
      'icon_path': icon_path,
      'image_path': image_path,
      'position': position,
    };
  }
}
