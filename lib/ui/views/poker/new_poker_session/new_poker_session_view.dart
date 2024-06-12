import 'package:all_bet_info/ui/common/app_colors.dart';
import 'package:all_bet_info/ui/widgets/custom_text_field_widget.dart';
import 'package:all_bet_info/ui/widgets/poker_game_drop_down_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
                            25.verticalSpace,

                            Text(
                              "Bankroll",
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
                            const TabBar(
                              labelColor: Colors.white,
                              unselectedLabelColor: Color(0xFFB8C0CA),
                              indicatorColor: AppColors.whiteColor,
                              tabs: [
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
                              height: 1000, // adjust this value as needed
                              child: const TabBarView(
                                children: [
                                  // Replace these with your actual tab content
                                  Center(child: Text('Limit')),
                                  Center(child: Text('Buy')),
                                  Center(child: Text('Additional')),
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
