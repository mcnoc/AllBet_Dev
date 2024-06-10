import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:all_bet_info/ui/widgets/appBars/custom_navigation_screens_appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'poker_viewmodel.dart';

class PokerView extends StackedView<PokerViewModel> {
  const PokerView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PokerViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NavigationScreensAppBar(
                      title: 'Poker',
                      icon: AppIcons.settings,
                    ),
                    42.verticalSpace,
                    Text(
                      'Best Offers',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    20.verticalSpace,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PokerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PokerViewModel();
}
