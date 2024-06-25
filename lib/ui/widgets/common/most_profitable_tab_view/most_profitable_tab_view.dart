import 'package:all_bet_info/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'most_profitable_tab_view_model.dart';

class MostProfitableTabView extends StackedView<MostProfitableTabViewModel> {
  const MostProfitableTabView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MostProfitableTabViewModel viewModel,
    Widget? child,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          30.verticalSpace,
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(
                color: const Color(0xFFB8C0CA),
              ),
            ),
            child: ToggleSwitch(
              totalSwitches: 3,
              minWidth: double.infinity,
              minHeight: 32.h,
              fontSize: 16.0,
              radiusStyle: true,
              cornerRadius: 5.r,
              initialLabelIndex: 1,
              activeBgColor: const [AppColors.primaryColor],
              activeFgColor: Colors.white,
              inactiveBgColor: AppColors.backgoundColorDark,
              inactiveFgColor: const Color(0xFFB8C0CA),
              labels: const ['Today', 'Month', 'Year'],
              onToggle: (index) {},
            ),
          ),
          14.verticalSpace,
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(
                color: const Color(0xFFB8C0CA),
              ),
            ),
            child: ToggleSwitch(
              totalSwitches: 3,
              minWidth: double.infinity,
              minHeight: 32.h,
              fontSize: 16.0,
              radiusStyle: true,
              cornerRadius: 5.r,
              initialLabelIndex: 0,
              activeBgColor: const [AppColors.primaryColor],
              activeFgColor: Colors.white,
              inactiveBgColor: AppColors.backgoundColorDark,
              inactiveFgColor: const Color(0xFFB8C0CA),
              labels: const ['All', 'Tournament', 'Cash'],
              onToggle: (index) {},
            ),
          ),
          24.verticalSpace,
          Text(
            "Today, May 15,2024",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: const Color(0xFFFFFFFF).withOpacity(0.3),
                  fontWeight: FontWeight.w600,
                ),
          ),
          16.verticalSpace,
        ],
      ),
    );
  }

  @override
  MostProfitableTabViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MostProfitableTabViewModel();
}
