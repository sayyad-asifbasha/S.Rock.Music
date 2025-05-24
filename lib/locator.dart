import 'package:get_it/get_it.dart';
import 'package:rock_music/services/navigation_service.dart';
import 'package:rock_music/services/size_config.dart';

GetIt locator = GetIt.instance;
final navigationService = locator<NavigationService>();
final sizeConfig = locator<SizeConfig>();
Future<void> setUpLocator() async {
  locator.registerSingleton(NavigationService());
  locator.registerSingleton(SizeConfig());
}
