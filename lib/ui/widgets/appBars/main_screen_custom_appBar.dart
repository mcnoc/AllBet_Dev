import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:all_bet_info/ui/widgets/appBars/custom_navigation_screens_appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreensCustomAppBar extends StatelessWidget {
  const MainScreensCustomAppBar({
    required this.title,
    required this.subTitle,
    super.key,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavigationScreensAppBar(
            title: title,
            icon: AppIcons.settings,
          ),
          42.verticalSpace,
          Text(
            subTitle,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}
