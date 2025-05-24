import 'package:rock_music/firebase_options.dart';
import 'package:rock_music/view_model/theme_view_model.dart';
import 'package:rock_music/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rock_music/view/base_view.dart';
import 'package:rock_music/router.dart' as router;
import 'package:rock_music/constants/routing_constants.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setUpLocator();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return BaseView<AppTheme>(
      builder: (context, model, child) => MaterialApp(
        title: 'Rock Music',
        theme: Provider.of<AppTheme>(context).theme,
        debugShowCheckedModeBanner: false,
        navigatorKey: navigationService.navigatorKey,
        onGenerateRoute: router.generateRoute,
        initialRoute: Routes.mainScreen,
        onGenerateInitialRoutes: (String initialRouteName) {
          return [
            router.generateRoute(
              const RouteSettings(
                name: Routes.mainScreen,
              ),
            ),
          ];
        },
      ),
    );
  }
}
