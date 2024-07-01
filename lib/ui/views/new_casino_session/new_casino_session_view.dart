import 'package:all_bet_info/ui/common/app_colors.dart';
import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:all_bet_info/ui/views/poker/new_poker_session/new_poker_session_view.dart';
import 'package:all_bet_info/ui/widgets/custom_image_widget.dart';
import 'package:all_bet_info/ui/widgets/custom_text_field_widget.dart';
import 'package:all_bet_info/ui/widgets/poker_game_drop_down_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'new_casino_session_viewmodel.dart';

class NewCasinoSessionView extends StackedView<NewCasinoSessionViewModel> {
  const NewCasinoSessionView({super.key});

  @override
  Widget builder(
    BuildContext context,
    NewCasinoSessionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            title: Text(
              'New Casino Session',
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Place",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      12.verticalSpace,
                      CustomDropDown(
                        dropdownValue: viewModel.placeDropDownValue,
                        gameList: viewModel.placeDropDownList,
                        onChanged: (value) => viewModel.onPlaceDropDownChanged(value),
                      ),
                      28.verticalSpace,
                      Text(
                        "Slot Machine",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      12.verticalSpace,
                      CustomDropDown(
                        dropdownValue: viewModel.slotMachineDropDownValue,
                        gameList: viewModel.slotMachineDropDownList,
                        onChanged: (value) => viewModel.onSlotMachineDropDownChanged(value),
                      ),
                      28.verticalSpace,
                      Text(
                        "Slot Machine",
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
                      28.verticalSpace,
                      Text(
                        "Game Speed",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      12.verticalSpace,
                      CustomDropDown(
                        dropdownValue: viewModel.gameSpeedDropDownValue,
                        gameList: viewModel.gameSpeedDropDownList,
                        onChanged: (value) => viewModel.onGameSpeedDropDownChanged(value),
                      ),
                      28.verticalSpace,
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
                      35.verticalSpace,
                      Column(
                        children: [
                          Row(
                            children: [
                              // ignore: deprecated_member_use
                              Switch.adaptive(
                                value: true,
                                onChanged: (value) {},
                                activeColor: Theme.of(context).colorScheme.primary,
                              ),
                              14.horizontalSpace,
                              Text(
                                "Public Report",
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              const Spacer(),
                              Text(
                                "30",
                                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.secondaryColor,
                                    ),
                              ),
                              Text(
                                " / 3151.20",
                                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              2.horizontalSpace,
                              CustomImageView(
                                svgPath: AppIcons.hexagoneStar,
                                height: 16.h,
                                width: 16.w,
                              ),
                            ],
                          ),
                          Text(
                            "All App users will be notified",
                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFFB8C0CA),
                                ),
                          ),
                        ],
                      ),
                      16.verticalSpace,
                      Text(
                        "Note",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      12.verticalSpace,
                      const CustomTextFromFiield(
                        maxLines: 3,
                      ),
                      30.verticalSpace,
                      Text(
                        "Share",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      12.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(viewModel.shareingIcons.length, (index) {
                          return Container(
                            height: 54.h,
                            width: 54.w,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: AppColors.cardColorDark,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.1),
                              ),
                            ),
                            child: CustomImageView(
                              svgPath: viewModel.shareingIcons[index],
                            ),
                          );
                        }),
                      ),
                      40.verticalSpace,
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
                      //
                      50.verticalSpace,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  NewCasinoSessionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NewCasinoSessionViewModel();
}
