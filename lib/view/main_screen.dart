import 'package:flutter/material.dart';
import 'package:rock_music/services/size_config.dart';
import 'package:rock_music/view/base_view.dart';
import 'package:rock_music/view/home_screen.dart';
import 'package:rock_music/view_model/main_screen_view_model.dart';
import 'package:rock_music/widgets/indicator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BaseView<MainScreenViewModel>(
      onModelReady: (model) {
        model.initializeTabController(this, 4);
      },
      builder: (context, model, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            toolbarHeight: SizeConfig.blockSizeVertical! * 4,
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          body: SafeArea(
            child: Stack(
              children: [
                TabBarView(
                  controller: model.tabController,
                  children: [
                    HomeScreen(),
                    Center(
                      child: Text(
                        "News",
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(fontSize: 20),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Music",
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(fontSize: 20),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Projects",
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge?.copyWith(fontSize: 20),
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: SizeConfig.safeBlockVertical! * 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).colorScheme.primaryFixed,

                      border: Border(
                        top: BorderSide(
                          color:
                              Theme.of(
                                context,
                              ).colorScheme.onPrimaryFixedVariant,
                          width: 1,
                        ),
                      ),
                    ),
                    child: TabBar(
                      dividerHeight: 0,
                      indicator: SemiCircleTabIndicator(
                        color: Colors.white,
                        radius: 7,
                      ),
                      controller: model.tabController,
                      tabs: model.navItems(context),
                      onTap: (index) {
                        model.onTabClick(index);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
