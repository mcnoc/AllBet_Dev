import 'package:all_bet_info/ui/common/app_colors.dart';
import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:all_bet_info/ui/widgets/custom_text_field_widget.dart';
import 'package:all_bet_info/ui/widgets/poker_game_drop_down_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'new_poker_session_viewmodel.dart';

class NewPokerSessionView extends StackedView<NewPokerSessionViewModel> {
  const NewPokerSessionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NewPokerSessionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Theme.of(context).colorScheme.background,
              title: Text(
                'New Poker Session',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              floating: true,
              snap: true,
              centerTitle: false,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  20.verticalSpace,
                  Column(
                    children: [
                      //Session Type, Game, Place and Bankroll widgets are here
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Session Type",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            12.verticalSpace,
                            //Selection Button

                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                border: Border.all(
                                  color: const Color(0xFFB8C0CA),
                                ),
                              ),
                              child: ToggleSwitch(
                                minWidth: double.infinity,
                                minHeight: 32.h,
                                fontSize: 16.0,
                                radiusStyle: true,
                                cornerRadius: 5.r,
                                initialLabelIndex: 0,
                                activeBgColor: const [AppColors.primaryColor],
                                activeFgColor: Colors.white,
                                inactiveBgColor: AppColors.backgoundColorDark,
                                inactiveFgColor: const Color(0xFFB8C0CA),
                                totalSwitches: 2,
                                labels: const ['Tournament', 'Cash'],
                                // customTextStyles: List.generate(
                                //   2,
                                //   (index) {
                                //     return Theme.of(context).textTheme.bodySmall?.copyWith(
                                //           fontWeight: FontWeight.w600,
                                //           color: index == 1 ? Colors.white : const Color(0xFFB8C0CA),
                                //         );
                                //   },
                                // ),
                                onToggle: (index) {
                                  // viewModel.updateSelectedBtnIndex(index!);
                                },
                              ),
                            ),
                            25.verticalSpace,

                            Text(
                              "Game",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            12.verticalSpace,
                            GameDropDown(
                              dropdownValue: viewModel.dropdownValue,
                              gameList: viewModel.gameList,
                              onChanged: (value) {
                                viewModel.updateDropDownValue(value!);
                              },
                            ),
                            25.verticalSpace,

                            Text(
                              "Place",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            12.verticalSpace,
                            const CustomTextFromFiield(
                              prefixIcon: Icon(
                                Icons.place,
                                color: Color(0xFFB8C0CA),
                              ),
                            ),
                            25.verticalSpace,

                            Text(
                              "Bankroll",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            12.verticalSpace,
                            const CustomTextFromFiield(
                              prefixIcon: Icon(
                                Icons.currency_bitcoin,
                                color: Color(0xFFB8C0CA),
                              ),
                            ),
                            60.verticalSpace,
                          ],
                        ),
                      ),

                      ///
                      DefaultTabController(
                        length: 3, // number of tabs
                        child: Column(
                          children: [
                            TabBar(
                              unselectedLabelColor: const Color(0xFFB8C0CA),
                              indicatorColor: AppColors.whiteColor,
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicatorPadding:
                                  EdgeInsets.symmetric(horizontal: 10.w),
                              dividerColor:
                                  AppColors.whiteColor.withOpacity(0.1),
                              tabs: const [
                                Tab(
                                  text: 'Limit type',
                                ),
                                Tab(
                                  text: 'Buy-In/Tips',
                                ),
                                Tab(
                                  text: 'Additional',
                                ),
                              ],
                            ),
                            Container(
                              color: AppColors.blackColor,
                              height: 600.h, // adjust this value as needed
                              child: TabBarView(
                                children: [
                                  // Replace these with your actual tab content
                                  LimitTypeTabView(
                                    viewModel: viewModel,
                                  ),
                                  const BuyInTipsTabView(),
                                  const Center(child: Text('Additional')),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  NewPokerSessionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NewPokerSessionViewModel();
}

class LimitTypeTabView extends StatelessWidget {
  final NewPokerSessionViewModel viewModel;
  const LimitTypeTabView({
    required this.viewModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: Column(
        children: [
          ...List.generate(
            viewModel.limitTypeStrings.length,
            (index) {
              return Column(
                children: [
                  Row(
                    children: [
                      CustomRadioButton(
                        value: index == 0,
                        scale: 1,
                        groupValue: true,
                        onChanged: (value) {
                          print(value);
                        },
                        activeColor: const Color(0xFFB8C0CA),
                        fillColor: AppColors.whiteColor,
                      ),
                      16.horizontalSpace,
                      Text(
                        viewModel.limitTypeStrings[index],
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                  12.verticalSpace,
                ],
              );
            },
          ),
          30.verticalSpace,
          Row(
            children: [
              const Expanded(
                child: CustomElevatedButton(
                  icon: AppIcons.icSave,
                  text: 'Save Old',
                ),
              ),
              8.horizontalSpace,
              const Expanded(
                child: CustomElevatedButton(
                  icon: AppIcons.icStart,
                  text: 'Start New',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  final bool value;
  final bool groupValue;
  final Function onChanged;
  final Color activeColor;
  final Color fillColor;
  final double scale;

  const CustomRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.activeColor,
    required this.fillColor,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!value),
      child: Container(
        width: (18 * scale).w,
        height: (18 * scale).h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xFF313439),
          border: Border.all(
              color: AppColors.whiteColor.withOpacity(0.1), width: 1),
        ),
        child: value == groupValue
            ? Center(
                child: Container(
                  width: (10 * scale).w,
                  height: (10 * scale).h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: fillColor,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}

class BuyInTipsTabView extends StatelessWidget {
  const BuyInTipsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Buy-In",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          12.verticalSpace,
          const CustomTextFromFiield(
            prefixIcon: Icon(
              Icons.place,
              color: Color(0xFFB8C0CA),
            ),
          ),
          30.verticalSpace,
          Text(
            "Tips",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          12.verticalSpace,
          const CustomTextFromFiield(
            prefixIcon: Icon(
              Icons.place,
              color: Color(0xFFB8C0CA),
            ),
          ),
          30.verticalSpace,
          Text(
            "Small Blind",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          12.verticalSpace,
          const CustomTextFromFiield(
            prefixIcon: Icon(
              Icons.place,
              color: Color(0xFFB8C0CA),
            ),
          ),
          30.verticalSpace,
          Text(
            "Big Blind",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          12.verticalSpace,
          const CustomTextFromFiield(
            prefixIcon: Icon(
              Icons.place,
              color: Color(0xFFB8C0CA),
            ),
          ),
          24.verticalSpace,
          Row(
            children: [
              const Expanded(
                child: CustomElevatedButton(
                  icon: AppIcons.icSave,
                  text: 'Save Old',
                ),
              ),
              8.horizontalSpace,
              const Expanded(
                child: CustomElevatedButton(
                  icon: AppIcons.icStart,
                  text: 'Start New',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    this.icon,
  });
  final String text;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 12.h),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            SvgPicture.asset(
              icon!,
              height: 14.h,
              width: 14.w,
            ),
          8.horizontalSpace,
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
