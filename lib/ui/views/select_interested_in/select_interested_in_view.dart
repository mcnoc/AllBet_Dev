import 'package:all_bet_info/constant/interested_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'select_interested_in_viewmodel.dart';

class SelectInterestedInView extends StackedView<SelectInterestedInViewModel> {
  const SelectInterestedInView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SelectInterestedInViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
          title: Text(
            "Register",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          actions: [
            Text(
              '${viewModel.selectedInterestedList.length}/4',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
        body: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
                child: Text(
                  "Choose what you're interested in",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: interestedList.length,
                (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),
                    child: InterestedCheckBoxWidget(
                      index: index,
                      isContain: viewModel.selectedInterestedList
                          .contains(interestedList[index]),
                      onCardTap: () => viewModel
                          .updateSelectedInterestedList(interestedList[index]),
                      onChanged: (value) => viewModel
                          .updateSelectedInterestedList(interestedList[index]),
                    ),
                  );
                },
              ),
            ),
            //Button
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 80.w,
                  vertical: 16.h,
                ),
                child: ElevatedButton(
                  onPressed: viewModel.navigateToHomeView,
                  child: Text(
                    "Get Started",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  SelectInterestedInViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SelectInterestedInViewModel();
}

class InterestedCheckBoxWidget extends StatelessWidget {
  const InterestedCheckBoxWidget({
    required this.index,
    required this.isContain,
    required this.onCardTap,
    required this.onChanged,
    super.key,
  });
  final int index;
  final bool isContain;
  final void Function()? onCardTap;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isContain
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
          ),
        ),
        child: Row(
          children: [
            Checkbox(
              value: isContain,
              onChanged: onChanged,
              checkColor: Theme.of(context).colorScheme.secondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.r),
              ),
              visualDensity: VisualDensity.compact,
            ),
            Text(
              interestedList[index],
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
