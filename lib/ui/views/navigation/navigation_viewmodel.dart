import 'package:all_bet_info/app/app.locator.dart';
import 'package:all_bet_info/app/app.router.dart';
import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:all_bet_info/ui/views/home/home_view.dart';
import 'package:all_bet_info/ui/views/more/more_view.dart';
import 'package:all_bet_info/ui/views/poker/poker_view.dart';
import 'package:all_bet_info/ui/views/sports/sports_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NavigationViewModel extends IndexTrackingViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
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
        const SportsView(),
        const HomeView(),
        const MoreView(),
      ];

  // ====================================
  // Navigations Functions
  // ====================================
  void navigateToNewPokerSessionView() {
    _navigationService.navigateToNewPokerSessionView();
  }
}
