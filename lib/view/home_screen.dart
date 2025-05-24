import 'package:flutter/material.dart';
import 'package:rock_music/services/size_config.dart';
import 'package:rock_music/view/base_view.dart';
import 'package:rock_music/view_model/home_screen_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeScreenViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight! * 0.35,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).colorScheme.primary,
                          Theme.of(context).colorScheme.primary,
                          Theme.of(context).colorScheme.primary,
                          Theme.of(context).colorScheme.onPrimaryFixed,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.0, 0.4, 0.5, 0.99],
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Enter your name',
                                labelStyle: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).colorScheme.onPrimary,
                                    width: 2,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                              onChanged: (value) {
                                print('User typed: $value');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
