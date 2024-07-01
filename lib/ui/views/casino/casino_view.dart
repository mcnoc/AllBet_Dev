import 'package:all_bet_info/ui/common/app_colors.dart';
import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:all_bet_info/ui/views/home/home_view.dart';
import 'package:all_bet_info/ui/widgets/custom_image_widget.dart';
import 'package:all_bet_info/ui/widgets/custom_text_field_widget.dart';
import 'package:all_bet_info/ui/widgets/poker_near_you_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'casino_viewmodel.dart';

class CasinoView extends StackedView<CasinoViewModel> {
  const CasinoView({super.key});

  @override
  Widget builder(
    BuildContext context,
    CasinoViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: ListView(
          children: [
            16.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sports',
                        style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                      CustomImageView(
                        svgPath: AppIcons.settings,
                      ),
                    ],
                  ),
                  24.verticalSpace,
                  const CustomTextFromFiield(
                    hintText: "Search",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  26.verticalSpace,
                  Text(
                    "Best Offers",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            22.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const CasinoBestOfferWidget(),
            ),
            16.verticalSpace,
            const CrumbsWidget(),
            32.verticalSpace,
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.r),
                  topRight: Radius.circular(32.r),
                ),
                border: Border.all(
                  color: const Color(0xFFFFFFFF).withOpacity(0.1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  24.verticalSpace,
                  const RowTextWithViewAll(
                    title: 'Slots near you',
                  ),
                  20.verticalSpace,
                  SizedBox(
                    height: 260.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        3,
                        (index) => Padding(
                          padding: EdgeInsets.only(
                              left: index == 0 ? 24.w : 0.0, right: 16.w),
                          child: const PockerNearYouWidget(),
                        ),
                      ),
                    ),
                  ),
                  40.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Text(
                      "Search by Casino",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  24.verticalSpace,
                  SizedBox(
                    height: 112.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        3,
                        (index) => Padding(
                          padding: EdgeInsets.only(
                              left: index == 0 ? 24.w : 0.0, right: 16.w),
                          child: Container(
                            width: 116.w,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1E2023),
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(
                                color: const Color(0xFFFFFFFF).withOpacity(0.1),
                              ),
                            ),
                            child: CustomImageView(
                              margin: EdgeInsets.symmetric(horizontal: 10.w),
                              imagePath: AppIcons.icMagicRedCasino,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  500.verticalSpace,
                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  CasinoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CasinoViewModel();
}

class CasinoBestOfferWidget extends StatelessWidget {
  const CasinoBestOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Theme.of(context).colorScheme.primaryContainer,
        color: const Color(0xFF1E2023),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: const Color(0xFFFFFFFF).withOpacity(0.1),
        ),
      ),
      child: Column(
        children: [
          14.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: AppIcons.icMagicRedCasino,
                height: 22.h,
                width: 22.w,
                fit: BoxFit.contain,
              ),
              8.horizontalSpace,
              Text(
                "Magic Red Casino",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          24.verticalSpace,
          Text(
            "100 Spins",
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontSize: 22.sp,
                  color: AppColors.secondaryColor,
                ),
          ),
          26.verticalSpace,
          Container(
            height: 1.h,
            color: const Color(0xFFFFFFFF).withOpacity(0.1),
          ),
          const IntrinsicHeight(
            child: Row(
              children: [
                CasinoBestOffersSubColumnWidget(
                  title: "Wagering",
                  subTitle: "\$35",
                  isRightBorder: true,
                  isBottomBorder: true,
                ),
                CasinoBestOffersSubColumnWidget(
                  title: "Max Cashout",
                  subTitle: "\$10",
                  isBottomBorder: true,
                ),
              ],
            ),
          ),
          const IntrinsicHeight(
            child: Row(
              children: [
                CasinoBestOffersSubColumnWidget(
                  title: "Expires",
                  subTitle: "1 Day",
                  isRightBorder: true,
                  isBottomBorder: true,
                ),
                CasinoBestOffersSubColumnWidget(
                  title: "Valid Games",
                  subTitle: "Various",
                  isBottomBorder: true,
                ),
              ],
            ),
          ),
          const Row(
            children: [
              CasinoBestOffersSubColumnWidget(
                title: "Bonus Code",
                subTitle: "No Code Needed",
                isBottomBorder: true,
              ),
            ],
          ),
          const Row(
            children: [
              CasinoBestOffersSubColumnWidget(
                title: "Valid For",
                subTitle: "New Player Only",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CasinoBestOffersSubColumnWidget extends StatelessWidget {
  const CasinoBestOffersSubColumnWidget({
    required this.title,
    required this.subTitle,
    this.isRightBorder = false,
    this.isBottomBorder = false,
    super.key,
  });
  final bool isRightBorder;
  final bool isBottomBorder;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            right: isRightBorder
                ? BorderSide(
                    color: const Color(0xFFFFFFFF).withOpacity(0.1),
                  )
                : BorderSide.none,
            bottom: isBottomBorder
                ? BorderSide(
                    color: const Color(0xFFFFFFFF).withOpacity(0.1),
                  )
                : BorderSide.none,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 12.w,
            top: 8.h,
            bottom: 8.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Colors.white.withOpacity(0.4),
                      fontWeight: FontWeight.w400,
                    ),
              ),
              2.verticalSpace,
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
