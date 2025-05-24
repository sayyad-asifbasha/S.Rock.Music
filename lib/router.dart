
import 'package:flutter/material.dart';
import 'package:rock_music/constants/routing_constants.dart';
import 'package:rock_music/view/main_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.mainScreen :
      return MaterialPageRoute(builder: (context)=>const MainScreen());

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(child: Text('Asif')),
        ),
      );
  }
}
