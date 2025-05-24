
import 'package:flutter/material.dart';
import 'package:rock_music/constants/routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.mainScreen :

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(child: Text('Asif')),
        ),
      );
  }
}
