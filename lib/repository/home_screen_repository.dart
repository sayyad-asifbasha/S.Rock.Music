import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rock_music/model/service_card_model.dart';
import 'package:rock_music/services/db_service.dart';


class HomeScreenRepository {
  Future<ServiceCardListModel> getServiceCards() async {
    try {
      final QuerySnapshot ref = await DBService.serviceCards.get();

      final List<ServiceCardModel> cards = ref.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return ServiceCardModel.fromJson(data);
      }).toList();

      cards.sort((a, b) => a.position.compareTo(b.position));

      return ServiceCardListModel(cards: cards);
    } catch (error) {
      print("Error fetching service cards: $error");
      return ServiceCardListModel(cards: []);
    }
  }
}

