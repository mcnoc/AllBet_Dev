import 'package:all_bet_info/ui/common/app_images.dart';
import 'package:all_bet_info/ui/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'analytics_tab_view_model.dart';

class AnalyticsTabView extends StackedView<AnalyticsTabViewModel> {
  const AnalyticsTabView({super.key});

  @override
  Widget builder(
    BuildContext context,
    AnalyticsTabViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        24.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: CustomImageView(
            imagePath: AppImages.imAnalytics01,
          ),
        ),
        28.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: CustomImageView(
            imagePath: AppImages.imAnalytics02,
          ),
        ),
      ],
    );
  }

  @override
  AnalyticsTabViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AnalyticsTabViewModel();
}
