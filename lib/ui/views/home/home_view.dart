import 'dart:ui';

import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:all_bet_info/ui/common/app_images.dart';
import 'package:all_bet_info/ui/common/my_utils.dart';
import 'package:all_bet_info/ui/widgets/appBars/custom_navigation_screens_appBar.dart';
import 'package:all_bet_info/ui/widgets/appBars/widget_left_right_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:all_bet_info/ui/common/app_colors.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NavigationScreensAppBar(
                      title: 'Home',
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
              const BestOffersSliderWidget(),
              16.verticalSpace,
              const CrumbsWidget(),
              31.verticalSpace,
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
                    30.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        'Action near you',
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    20.verticalSpace,
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        AppImages.imNearYou,
                        scale: 4,
                      ),
                    ),
                    54.verticalSpace,
                    const RowTextWithViewAll(
                      title: 'Equity available now',
                    ),
                    21.verticalSpace,
                    SizedBox(
                      height: 145.h,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 12.w, left: index == 0 ? 24.w : 0.w),
                            child: const ImageWithRightTextWidget(),
                          );
                        },
                      ),
                    ),
                    16.verticalSpace,
                    const CrumbsWidget(),
                    54.verticalSpace,
                    const RowTextWithViewAll(
                      title: 'Best Odds',
                    ),
                    20.verticalSpace,
                    const OddsDetailsCard(
                      color: null,
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
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'View all',
                          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              60.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text(
                  'News',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              20.verticalSpace,

              const NewsContainerWidget(),
              16.verticalSpace,
              const NewsContainerWidget(),
              16.verticalSpace,
              const NewsContainerWidget(),

              ///
              ///
              ///
              ///
              550.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

class NewsContainerWidget extends StatelessWidget {
  const NewsContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.r,
        ),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            MyUtils.getTempLink(),
          ),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(top: 16.h, right: 16.w),
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.black,
              ),
              child: Text(
                "May 15,202417:55 ET",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                child: Container(
                  height: 115.h,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.5),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      children: [
                        12.verticalSpace,
                        Text(
                          'WPT World Championship \$40M Prize Pool Includes \$2.4M Overlay',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        12.verticalSpace,
                        Text(
                          'The World Poker Tour fell just short of the ambitious \$40 million',
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                color: Colors.white.withOpacity(0.5),
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OddsDetailsCard extends StatelessWidget {
  const OddsDetailsCard({
    this.color,
    this.endTextcolor,
    required this.value,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.promotion,
    required this.estimatedValue,
    required this.frequency,
    required this.details,
    required this.info,
    super.key,
  });
  final Color? color;
  final Color? endTextcolor;
  final String value;
  final String icon;
  final String title;
  final String subTitle;
  final String promotion;
  final String estimatedValue;
  final String frequency;
  final String details;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(
              color: const Color(0xFFFFFFFF).withOpacity(0.1),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 20.h),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      icon,
                      width: 30.w,
                      height: 22.h,
                    ),
                    14.horizontalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Text(
                          subTitle,
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFB8C0CA),
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              16.verticalSpace,
              Divider(
                color: const Color(0xFFFFFFFF).withOpacity(0.1),
              ),
              16.verticalSpace,
              WidgetWithLeftAndRightText(
                title: "Promotion",
                subTitle: promotion,
              ),
              16.verticalSpace,
              WidgetWithLeftAndRightText(
                title: "Estimated value",
                subTitle: estimatedValue,
                color: endTextcolor,
              ),
              16.verticalSpace,
              WidgetWithLeftAndRightText(
                title: "Frequency",
                subTitle: frequency,
              ),
              16.verticalSpace,
              Divider(
                color: const Color(0xFFFFFFFF).withOpacity(0.1),
              ),
              16.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Details",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFFFFFFF).withOpacity(0.3),
                          ),
                    ),
                    8.verticalSpace,
                    Text(
                      details,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
              ),
              14.verticalSpace,
              Divider(
                color: const Color(0xFFFFFFFF).withOpacity(0.1),
              ),
              10.verticalSpace,
              Text(
                info,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFFFFFFF).withOpacity(0.3),
                    ),
              ),
              10.verticalSpace,
            ],
          ),
        ),
        Positioned(
          right: 10.w,
          top: 20.h,
          child: Stack(
            children: [
              SvgPicture.asset(
                AppIcons.greenLabel,
                width: 120.w,
                fit: BoxFit.fill,
                color: color,
              ),
              Positioned(
                right: 15.w,
                top: 15.h,
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class RowTextWithViewAll extends StatelessWidget {
  const RowTextWithViewAll({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'View all>',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class CrumbsWidget extends StatelessWidget {
  const CrumbsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Container(
          height: 8.h,
          width: index == 0 ? 45.w : 8.w,
          margin: EdgeInsets.all(2.w),
          decoration: BoxDecoration(
            color: index == 0 ? AppColors.primaryColor : Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(
              color: const Color(0xFFFFFFFF).withOpacity(0.1),
            ),
          ),
        );
      }),
    );
  }
}

class ImageWithRightTextWidget extends StatelessWidget {
  const ImageWithRightTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.h,
      width: 311.w,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              bottomLeft: Radius.circular(16.r),
            ),
            child: CachedNetworkImage(
              imageUrl: MyUtils.getTempLink(),
              width: 113.w,
              fit: BoxFit.cover,
            ),
          ),
          18.horizontalSpace,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$599 to the losing hand \n\$300 to the winning hand \n\$100 share for each player sitting at the winning table",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                8.verticalSpace,
                Text(
                  "South Point Poker Room \nMay 14,2024",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BestOffersSliderWidget extends StatelessWidget {
  const BestOffersSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      options: CarouselOptions(
        height: 180.h,
        aspectRatio: 1.5,
        viewportFraction: 0.4,
        initialPage: 0,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Container(
          height: 180.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(itemIndex == 0 ? AppImages.imPokerBestOffers : AppImages.imCasinoBestOffers),
            ),
            borderRadius: BorderRadius.circular(16.r),
          ),
        );
      },
    );
  }
}
