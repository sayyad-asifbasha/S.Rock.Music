import 'package:rock_music/services/size_config.dart';
import 'package:rock_music/view_model/base_view_model.dart';
import 'package:flutter/material.dart';

class MainScreenViewModel extends BaseModel {
  int currentPageIndex = 0;

  void onTabTapped(int index) {
    currentPageIndex = index;
    notifyListeners();
  }



  late TabController tabController;
  int selectedIndex = 0;


  void initializeTabController(TickerProvider vsync,int length) {
    tabController = TabController(length: length, vsync: vsync);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void onTabClick(int index) {
    selectedIndex = index;
    notifyListeners();
  }


  List<Tab> navItems(BuildContext context) => [
    Tab(
      icon:  Image.asset(
        'assets/icons/s.rocks.music logo.png',
        height: SizeConfig.screenHeight! * 0.03,
        color: selectedIndex == 0
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.primaryFixedDim,
      ),
      child:  Text(
        'Home',
        style: TextStyle(
          color: selectedIndex == 0
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.primaryFixedDim,
          fontWeight:FontWeight.w400,
          fontSize: SizeConfig.blockSizeHorizontal!*3,
        ),
      ),
    ),
    Tab(
      icon: Image.asset(
        'assets/icons/Vector.png',
        height: SizeConfig.safeBlockVertical! * 2.9,
        width: SizeConfig.safeBlockHorizontal! * 6,
        color: selectedIndex == 1
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.primaryFixedDim,
      ),
      child:  Text(
        'News',
        style: TextStyle(
          color: selectedIndex == 1
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.primaryFixedDim,
          fontWeight:FontWeight.w400,
          fontSize: SizeConfig.blockSizeHorizontal!*3,
        ),
      ),
    ),
    Tab(
      icon:  Image.asset(
        'assets/icons/Music.png',
        height: SizeConfig.safeBlockVertical! * 2.9,
        width: SizeConfig.safeBlockHorizontal! * 6,

        color: selectedIndex == 2
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.primaryFixedDim,
      ),
      child:  Text(
        'Music',
        style: TextStyle(
          color: selectedIndex == 2
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.primaryFixedDim,
          fontWeight:FontWeight.w400,
          fontSize: SizeConfig.blockSizeHorizontal!*3,
        ),
      ),
    ),
    Tab(
      icon:  Image.asset(
        'assets/icons/Union.png',
        height: SizeConfig.safeBlockVertical! * 2.9,
        width: SizeConfig.safeBlockHorizontal! * 6,

        color: selectedIndex == 3
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.primaryFixedDim,
      ),
      child:  Text(
        'Projects',
        style: TextStyle(
          color: selectedIndex == 3
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.primaryFixedDim,
          fontWeight:FontWeight.w400,
          fontSize: SizeConfig.blockSizeHorizontal!*3,
        ),
      ),
    ),
  ];
}
