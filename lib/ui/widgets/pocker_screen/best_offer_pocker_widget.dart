import 'package:all_bet_info/ui/common/app_colors.dart';
import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:all_bet_info/ui/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestOfferPockerWidget extends StatelessWidget {
  const BestOfferPockerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          width: 200.w,
          child: Container(
            margin: EdgeInsets.only(top: 25.h),
            decoration: BoxDecoration(
              color: const Color(0xFF1E2023),
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                color: AppColors.whiteColor.withOpacity(0.1),
              ),
            ),
            child: Column(
              children: [
                18.verticalSpace,
                Text(
                  "Live! Casino Hotel",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                12.verticalSpace,
                Divider(
                  color: AppColors.whiteColor.withOpacity(0.1),
                  thickness: 1,
                ),
                8.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    "12 Hours of Carded Play in JP Eligible Games You Live! SWAG. \n\nQualifying is Monday Trhu Thursday. See The Flyer For Rules and Details.",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: const Color(0xFFB8C0CA),
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                8.verticalSpace,
                Divider(
                  color: AppColors.whiteColor.withOpacity(0.1),
                  thickness: 1,
                ),
                8.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    "\$750 High Hands Every 20 Minutes Until Midnight",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: const Color(0xFFB8C0CA),
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                8.verticalSpace,
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: CustomImageView(
            radius: BorderRadius.circular(8.r),
            imagePath: AppIcons.live,
            height: 40.h,
            width: 72.w,
          ),
        ),
      ],
    );
  }
}
