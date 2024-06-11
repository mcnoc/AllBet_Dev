import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:all_bet_info/ui/views/home/home_view.dart';
import 'package:all_bet_info/ui/views/poker/poker_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

class NavigationViewModel extends IndexTrackingViewModel {
  List<BottomNavigationBarItem> getBottomNavBarItems(int selectedINDEX) {
    List<String> icons = [
      AppIcons.icHome,
      AppIcons.icPoker,
      AppIcons.icSports,
      AppIcons.icCasino,
      AppIcons.icMore,
    ];

    return List.generate(
      5,
      (index) => BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 4),
          child: SvgPicture.asset(
            icons[index],
            height: 24.h,
            width: 24.w,
            color: index == currentIndex ? Colors.white : Colors.grey,
          ),
        ),
        label: bottomNavLabels[index],
        tooltip: bottomNavLabels[index],
      ),
    );
  }

  List<String> bottomNavLabels = [
    "Home",
    "Poker",
    "Sports",
    "Casino",
    "More",
  ];

  List<Widget> get bottomNavScreen => [
        const HomeView(),
        const PokerView(),
        const HomeView(),
        const HomeView(),
        const HomeView(),
      ];
}