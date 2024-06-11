import 'package:all_bet_info/ui/common/app_colors.dart';
import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:all_bet_info/ui/common/app_images.dart';
import 'package:all_bet_info/ui/views/home/home_view.dart';
import 'package:all_bet_info/ui/widgets/appBars/main_screen_custom_appBar.dart';
import 'package:all_bet_info/ui/widgets/custom_image_widget.dart';
import 'package:all_bet_info/ui/widgets/pocker_screen/best_offer_pocker_widget.dart';
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
              const MainScreensCustomAppBar(
                title: "Poker",
                subTitle: "Best Offers",
              ),
              const BestOfferPockerWidget(),
              16.verticalSpace,
              const CrumbsWidget(),
              48.verticalSpace,
              Container(
                // height: 300.h,
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
                      title: 'Poker near you',
                    ),
                    20.verticalSpace,
                    SizedBox(
                      height: 260.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: EdgeInsets.only(left: index == 0 ? 24.w : 0.0, right: 16.w),
                            child: const PockerNearYouWidget(),
                          ),
                        ),
                      ),
                    ),
                    16.verticalSpace,
                    const CrumbsWidget(),
                    48.verticalSpace,
                    const RowTextWithViewAll(
                      title: 'Best Odds',
                    ),
                    20.verticalSpace,
                    const OddsDetailsCard(
                      color: null,
                      isValue: false,
                      value: "Great Value",
                      icon: AppIcons.icCrown,
                      endTextcolor: AppColors.secondaryColor,
                      title: 'High Hand Bonus',
                      subTitle: "Lucky Aces Poke",
                      promotion: "\$100/hr High Hand",
                      estimatedValue: "\$3.13 EV/hr",
                      frequency: "Every Hour",
                      details: "Win \$100 for the highest hand shown each hour.",
                      info: "Max 1 win per player/hour",
                    ),
                    15.verticalSpace,
                    const OddsDetailsCard(
                      color: AppColors.errorColor,
                      isValue: false,
                      value: "Poor Value",
                      icon: AppIcons.icBadBeat,
                      endTextcolor: AppColors.errorColor,
                      title: 'Bad Beat Jackpot',
                      subTitle: "Royal Flush Casino",
                      promotion: "Bad Beat Jackpot",
                      estimatedValue: "-\$149.50 EV/hr",
                      frequency: "Very Rare",
                      details: "Share a jackpot (specific requirements apply)",
                      info: "See room for full jackpot details",
                    ),
                    15.verticalSpace,
                    const OddsDetailsCard(
                      color: AppColors.primaryColor,
                      isValue: false,
                      endTextcolor: AppColors.secondaryColor,
                      value: "Good Value",
                      icon: AppIcons.icCards,
                      title: 'Hot Cards',
                      subTitle: "Texas Hold'em Club ",
                      promotion: "Hot Cards",
                      estimatedValue: "\$1.45 EV/h*",
                      frequency: "Very Rare ",
                      details: "Get rewarded on the flop (Set, Full House, Quads)",
                      info: "See room website for details.",
                    ),
                    16.verticalSpace,
                    500.verticalSpace,
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
            url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTncVciwVOJAM8qf7WU_BmOLU5egRhETnzhcA&s",
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
