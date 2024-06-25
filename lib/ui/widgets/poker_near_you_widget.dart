import 'package:all_bet_info/ui/common/app_colors.dart';
import 'package:all_bet_info/ui/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PockerNearYouWidget extends StatelessWidget {
  const PockerNearYouWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      decoration: BoxDecoration(
        color: const Color(0xFF1E2023),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: AppColors.whiteColor.withOpacity(0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            alignment: Alignment.topCenter,
            radius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
            url:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTncVciwVOJAM8qf7WU_BmOLU5egRhETnzhcA&s",
            fit: BoxFit.cover,
            height: 70.h,
            width: 220.w,
          ),
          16.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "May 15, 2024 18:30 ET",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: const Color(0xFFFFFFFF).withOpacity(0.3),
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const Icon(
                  Icons.star,
                  color: AppColors.yellowColor,
                ),
              ],
            ),
          ),
          10.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Sahara Las Vegas",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ),
          36.verticalSpace,
          Divider(
            color: AppColors.whiteColor.withOpacity(0.1),
            thickness: 1,
          ),
          16.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Text(
                  "\$750 High Hands Every 20 Minutes Until Midnight",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: const Color(0xFFB8C0CA),
                        fontWeight: FontWeight.w400,
                      ),
                ),
                16.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
