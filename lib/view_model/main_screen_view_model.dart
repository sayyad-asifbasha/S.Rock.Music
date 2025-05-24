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
      icon: Icon(
        Icons.home,
        size: SizeConfig.screenHeight! * 0.03,
        color: selectedIndex == 0
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.primaryFixedDim,
      ),
      child:  Text(
        'Hello',
        style: TextStyle(
          color: selectedIndex == 0
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.primaryFixedDim,
        ),
      ),
    ),
    Tab(
      icon: Icon(
        Icons.newspaper,
        color: selectedIndex == 1
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.primaryFixedDim,
        size: SizeConfig.screenHeight! * 0.03,
      ),
      child:  Text(
        'Hello',
        style: TextStyle(
          color: selectedIndex == 1
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.primaryFixedDim,
        ),
      ),
    ),
    Tab(
      icon: Icon(
        selectedIndex == 2 ? Icons.person : Icons.person_outline,
        color: selectedIndex == 2
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.primaryFixedDim,
        size: SizeConfig.screenHeight! * 0.03,
      ),
      child:  Text(
        'Hello',
        style: TextStyle(
          color: selectedIndex == 2
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.primaryFixedDim,
        ),
      ),

    ),
    Tab(
      icon: Icon(
        selectedIndex == 3 ? Icons.person : Icons.person_outline,
        color: selectedIndex == 3
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.primaryFixedDim,
        size: SizeConfig.screenHeight! * 0.03,
      ),
      child:  Text(
        'Hello',
        style: TextStyle(
          color: selectedIndex == 3
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.primaryFixedDim,
        ),
      ),
    ),
  ];
}
