import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:all_bet_info/ui/common/app_images.dart';
import 'package:all_bet_info/ui/common/my_utils.dart';
import 'package:all_bet_info/ui/widgets/appBars/custom_navigation_screens_appBar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:all_bet_info/ui/common/app_colors.dart';
import 'package:all_bet_info/ui/common/ui_helpers.dart';

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

                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(
                          color: const Color(0xFFFFFFFF).withOpacity(0.1),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppIcons.icCrown,
                                width: 30.w,
                                height: 22.h,
                              ),
                              14.horizontalSpace,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "High Hand Bonus",
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    "Lucky Aces Poke",
                                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFFB8C0CA),
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: const Color(0xFFFFFFFF).withOpacity(0.1),
                          )
                        ],
                      ),
                    ),

                    //

                    ///
                    ///
                    ///
                    ///

                    540.verticalSpace,
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
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
