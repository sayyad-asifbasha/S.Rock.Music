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
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(SizeConfig.screenHeight! * 0.38),
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight! * 0.38,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.onPrimaryFixed,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.0, 0.5, 1.0],
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search_rounded),
                                prefixIconColor:
                                    Theme.of(context).colorScheme.onPrimary,
                                hintText: "Search \"Punjab Lyrics\" ",
                                hintStyle: Theme.of(
                                  context,
                                ).textTheme.titleMedium?.copyWith(
                                  color:
                                      Theme.of(
                                        context,
                                      ).colorScheme.secondaryContainer,
                                  fontWeight: FontWeight.bold,
                                ),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "|",
                                      style: TextStyle(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.secondaryContainer,
                                        fontSize:
                                            SizeConfig.blockSizeVertical! * 3.5,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Icon(
                                      Icons.mic,
                                      size: SizeConfig.blockSizeVertical! * 2.8,
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.onPrimary,
                                    ),
                                  ],
                                ),
                              ),

                              // decoration: InputDecoration(
                              //   contentPadding: EdgeInsets.symmetric(
                              //     horizontal: 16,
                              //     vertical: 14,
                              //   ),
                              //   prefixIcon: Icon(Icons.search_rounded),
                              //   prefixIconColor:
                              //       Theme.of(context).colorScheme.onPrimary,
                              //   suffixIcon: Container(
                              //     child: Row(
                              //       mainAxisAlignment: MainAxisAlignment.start,
                              //       mainAxisSize: MainAxisSize.min,
                              //       children: [
                              //         Text(
                              //           "|",
                              //           style: TextStyle(
                              //             fontSize:
                              //                 SizeConfig.blockSizeVertical! * 3.5,
                              //             color :Theme.of(context).colorScheme.secondaryContainer,
                              //
                              //     ),
                              //         ),
                              //         SizedBox(width: 8),
                              //         Icon(
                              //           Icons.mic,
                              //           size: SizeConfig.blockSizeVertical! * 2.8,
                              //           color: Theme.of(context).colorScheme.onPrimary,
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              //   hintText: "Search \"Punjab Lyrics\" ",
                              //   hintStyle: Theme.of(
                              //     context,
                              //   ).textTheme.titleMedium?.copyWith(
                              //     color:
                              //         Theme.of(context).colorScheme.secondaryContainer,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              //   filled: true,
                              //   fillColor: Theme.of(context).colorScheme.onSecondary,
                              //   border: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(12),
                              //     borderSide: BorderSide.none,
                              //   ),
                              //   enabledBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(12),
                              //     borderSide: BorderSide.none,
                              //   ),
                              //   focusedBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(12),
                              //     borderSide: BorderSide.none,
                              //   ),
                              // ),
                              style: Theme.of(
                                context,
                              ).textTheme.titleMedium?.copyWith(
                                color:
                                    Theme.of(
                                      context,
                                    ).colorScheme.secondaryContainer,
                                fontWeight: FontWeight.bold,
                              ),
                              cursorColor:
                                  Theme.of(
                                    context,
                                  ).colorScheme.secondaryContainer,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.account_circle, color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeHorizontal! * 10),
                    Text(
                      "Claim your",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeHorizontal! * 3),
                    Text(
                      "Free Demo",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: SizeConfig.blockSizeHorizontal! * 7,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeHorizontal! * 1),
                    Text(
                      "for custom Music Production",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2,),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding:EdgeInsets.symmetric(vertical:0,horizontal: SizeConfig.safeBlockHorizontal!*3),
                      ),
                      child: Container(
                        child: Text(
                          "Book Now",
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium?.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ),
          ),
        );
      },
    );
  }
}
