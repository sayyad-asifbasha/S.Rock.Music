import 'package:flutter/material.dart';
import 'package:rock_music/services/size_config.dart';
import 'package:rock_music/view/base_view.dart';
import 'package:rock_music/view_model/home_screen_view_model.dart';
import 'package:rock_music/widgets/loader.dart';
import 'package:rock_music/widgets/service_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeScreenViewModel>(
      onModelReady: (model) async {
        await model.onInitialize();
      },
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: SizeConfig.screenHeight! * 0.36,
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
                          child: buildHeader(context),
                        ),
                        Positioned(
                          bottom: SizeConfig.blockSizeVertical! * 0.5,
                          left: -SizeConfig.blockSizeHorizontal! * 6,
                          child: Image.asset(
                            'assets/images/disc.png',
                            width: SizeConfig.blockSizeHorizontal! * 28,
                            height: SizeConfig.blockSizeVertical! * 18,
                          ),
                        ),
                        Positioned(
                          bottom: SizeConfig.blockSizeVertical! * 0.5,
                          right: -SizeConfig.blockSizeHorizontal! * 8,
                          child: Image.asset(
                            'assets/images/piano.png',
                            width: SizeConfig.blockSizeHorizontal! * 32,
                            height: SizeConfig.blockSizeVertical! * 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: SingleChildScrollView(
                padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal! * 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hire hand-picked Props for popular music services",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 14,
                        fontFamily: 'Syne',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical! * 3),
                    if (model.isBusy)
                      Center(
                        child: Loader(
                          count: 6,
                          minHeight: 6,
                          maxHeight: 20,
                          durationInMilliseconds: 1200,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      )
                    else
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: model.serviceCardList.cards.length,
                        itemBuilder: (context, index) {
                          return ServiceCard(
                            card: model.serviceCardList.cards[index],
                          );
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.zero,
                    child: Image.asset(
                      'assets/icons/Search.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  hintText: "Search \"Punjab Lyrics\" ",
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    fontWeight: FontWeight.w500,
                    fontSize: SizeConfig.blockSizeVertical! * 2,
                  ),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "|",
                        style: TextStyle(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          fontSize: SizeConfig.blockSizeVertical! * 3.5,
                        ),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal! * 2),
                      Icon(
                        Icons.mic,
                        size: SizeConfig.blockSizeVertical! * 2.8,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ],
                  ),
                ),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: Theme.of(context).colorScheme.secondaryContainer,
              ),
            ),
            SizedBox(width: SizeConfig.blockSizeHorizontal! * 2.5),
            Image.asset('assets/icons/Generic avatar.png'),
          ],
        ),
        SizedBox(height: SizeConfig.blockSizeHorizontal! * 7),
        Text(
          "Claim your",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: SizeConfig.blockSizeHorizontal! * 4,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeHorizontal! * 2),
        Text(
          "Free Demo",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: SizeConfig.blockSizeHorizontal! * 10,
            fontFamily: 'Lobster',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeHorizontal! * 1),
        Text(
          "for custom Music Production",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 2),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: SizeConfig.safeBlockHorizontal! * 3,
            ),
          ),
          child: Text(
            "Book Now",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ),
      ],
    );
  }
}
