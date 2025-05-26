import 'package:rock_music/enums/enums.dart';
import 'package:rock_music/locator.dart';
import 'package:rock_music/model/service_card_model.dart';
import 'package:rock_music/view_model/base_view_model.dart';

class HomeScreenViewModel extends BaseModel {
  late ServiceCardListModel _serviceCardList;
  ServiceCardListModel get serviceCardList =>_serviceCardList;

  Future<void> onInitialize() async {
    try {
      setState(ViewState.busy);
      _serviceCardList = await homeScreenRepository.getServiceCards();
    } catch (e) {
      print("Error loading service cards: $e");
    } finally {
      setState(ViewState.idle);
      notifyListeners();
    }
  }
}
