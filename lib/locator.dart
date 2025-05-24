import 'package:get_it/get_it.dart';
import 'package:rock_music/services/navigation_service.dart';
import 'package:rock_music/services/size_config.dart';
import 'package:rock_music/view_model/home_screen_view_model.dart';
import 'package:rock_music/view_model/main_screen_view_model.dart';
import 'package:rock_music/view_model/theme_view_model.dart';

GetIt locator = GetIt.instance;
final navigationService = locator<NavigationService>();
final sizeConfig = locator<SizeConfig>();
Future<void> setUpLocator() async {
  locator.registerSingleton(NavigationService());
  locator.registerSingleton(SizeConfig());
  
  locator.registerFactory(()=>MainScreenViewModel());
  locator.registerFactory(()=>AppTheme());
  locator.registerFactory(()=>HomeScreenViewModel());
}
