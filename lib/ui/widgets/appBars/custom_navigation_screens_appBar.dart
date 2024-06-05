import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NavigationScreensAppBar extends StatelessWidget {
  const NavigationScreensAppBar({
    required this.title,
    required this.icon,
    super.key,
  });
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SvgPicture.asset(
          icon,
          height: 20.h,
          width: 20.w,
        ),
      ],
    );
  }
}
