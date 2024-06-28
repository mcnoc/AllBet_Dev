import 'package:all_bet_info/ui/widgets/sports_screen/bet_card.dart';
import 'package:all_bet_info/ui/widgets/sports_screen/bet_cards_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'new_bet_viewmodel.dart';

class NewBetView extends StackedView<NewBetViewmodel> {
  const NewBetView({super.key});

  @override
  Widget builder(
    BuildContext context,
    NewBetViewmodel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'New Bet',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          actions: [
            Text('Bankroll: \$150',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(
              width: 10,
            )
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(
                  viewModel.selectedOption == 'Search' ? 120 : 70),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 2),
                      width: MediaQuery.sizeOf(context).width * 0.85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white, width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              viewModel.setOption('Search');
                            },
                            child: Container(
                              margin: const EdgeInsets.all(0),
                              height: 30,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.sizeOf(context).width * 0.132),
                              decoration: BoxDecoration(
                                  color: viewModel.selectedOption == 'Search'
                                      ? const Color(0xff0075FF)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                'Search',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              viewModel.setOption('Custom');
                            },
                            child: Container(
                              margin: const EdgeInsets.all(0),
                              height: 30,
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.sizeOf(context).width * 0.132),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: viewModel.selectedOption == 'Custom'
                                      ? const Color(0xff0075FF)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                'Custom',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    10.verticalSpace,
                    viewModel.selectedOption == 'Search'
                        ? SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.85,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(bottom: 8),
                                alignLabelWithHint: true,
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                hintText: "Search",
                                hintStyle: GoogleFonts.manrope(
                                    fontWeight: FontWeight.w400, fontSize: 16),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.white)),
                              ),
                            ),
                          )
                        : const SizedBox(),
                    if (viewModel.selectedOption == 'Search') 20.verticalSpace,
                  ],
                ),
              )),
        ),
        backgroundColor: viewModel.selectedOption == 'Search'
            ? Colors.black
            : const Color(0xff111214),
        body: Container(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: viewModel.selectedOption == 'Search'
              ? DefaultTabController(
                  length: viewModel.types.length,
                  child: Column(
                    children: [
                      TabBar(
                        dividerColor: const Color(0xff787878),
                        indicatorColor: Colors.white,
                        labelColor: Colors.white,
                        unselectedLabelColor: const Color(0xff787878),
                        labelStyle: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                        tabs: [
                          Tab(
                            text: viewModel.types[0],
                          ),
                          Tab(
                            text: viewModel.types[1],
                          ),
                          Tab(
                            text: viewModel.types[2],
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            for (int i = 0; i < viewModel.types.length; i++)
                              Container(
                                  padding: const EdgeInsets.only(top: 5),
                                  width: MediaQuery.sizeOf(context).width,
                                  height: MediaQuery.sizeOf(context).height,
                                  child: const BetCardsListView(
                                      itemCount: 10,
                                      widget: BetCard(),
                                      separator: SizedBox(
                                        height: 15,
                                      )))
                          ],
                        ),
                      )
                    ],
                  ))
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Event Type',
                      style: GoogleFonts.manrope(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffB8C0CA)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'NBA',
                            style: GoogleFonts.manrope(
                                color: const Color(0xffB8C0CA),
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xffB8C0CA),
                            size: 12,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Team 1',
                      style: GoogleFonts.manrope(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffB8C0CA)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Select',
                            style: GoogleFonts.manrope(
                                color: const Color(0xffB8C0CA),
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xffB8C0CA),
                            size: 12,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Team 2',
                      style: GoogleFonts.manrope(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffB8C0CA)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Select',
                            style: GoogleFonts.manrope(
                                color: const Color(0xffB8C0CA),
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xffB8C0CA),
                            size: 12,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.3,
                    ),
                    InkWell(
                      onTap: () {
                        viewModel.navigateToSaveNewBet();
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 120),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff0075FF)),
                        child: Text(
                          'Continue >',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }

  @override
  NewBetViewmodel viewModelBuilder(
    BuildContext context,
  ) =>
      NewBetViewmodel();
}
