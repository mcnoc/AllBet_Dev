import 'package:all_bet_info/ui/common/app_colors.dart';
import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WidgetWithLeftAndRightText extends StatelessWidget {
  const WidgetWithLeftAndRightText({
    required this.title,
    required this.subTitle,
    this.color,
    super.key,
  });
  final String title;
  final String subTitle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFFFFFFF).withOpacity(0.3),
                ),
          ),
          const Spacer(),
          if (color != null)
            color != AppColors.errorColor ? SvgPicture.asset(AppIcons.upGreen) : SvgPicture.asset(AppIcons.downRed),
          5.horizontalSpace,
          Text(
            subTitle,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
          ),
        ],
      ),
    );
  }
}
