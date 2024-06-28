import 'package:all_bet_info/ui/views/sports/components/soccer_card.dart';
import 'package:all_bet_info/ui/views/sports/sports_event_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';

class SportsEventView extends StackedView<SportsEventViewmodel> {
  const SportsEventView({super.key});

  @override
  Widget builder(
      BuildContext context,
      SportsEventViewmodel viewModel,
      Widget? child,
      ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgoundColorDark,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed: () {
            Navigator.pop(context);
          },
          ),
          title:  Text('Sports Event',style:Theme.of(context).textTheme.titleLarge,),
          actions: [
            Text('Bankroll: \$150',style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(width: 10,)
          ],
          bottom: PreferredSize(
              preferredSize:  const Size.fromHeight(70), child: SizedBox(
            width: MediaQuery.sizeOf(context).width*0.85,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(bottom: 8),
                alignLabelWithHint: true,
                prefixIcon: const Icon(Icons.search,color: Colors.grey,),
                hintText: "Search",
                hintStyle: GoogleFonts.manrope(
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: Colors.white
                    )
                ),
                enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: Colors.white
                    )
                ),
                focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: Colors.white
                    )
                ),
              ),
            ),
          ),
              ),
        ),
        body: DefaultTabController(
          length: 3,
          child: SingleChildScrollView(

            child: Column(
              children: [
                Container(
                  color: AppColors.tabBarColor,
                  child: TabBar(
                    dividerColor: const Color(0xff787878),
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    unselectedLabelColor: const Color(0xff787878),
                    labelStyle: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                    tabs: const [
                      Tab(text: 'NHL',),
                      Tab(text: 'Soccer', ),
                      Tab(text: 'Football',),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height-200,
                  child: TabBarView(
                    children: [

                     Padding(
                       padding: const EdgeInsets.only(top: 10.0,bottom: 20),
                       child: ListView.separated(
                           shrinkWrap: true,
                           itemBuilder: (context,index){
                            return InkWell(
                                onTap: (){
                                  viewModel.navigateToGameScoreView();
                                },
                                child: SoccerCard(openers:viewModel.openers,fullCardView: true,));
                          }
                              , separatorBuilder: (context,index){
                                return const SizedBox(
                                  height: 15,
                                );
                              }, itemCount: 5),
                     ), Padding(
                       padding: const EdgeInsets.only(top: 10.0,bottom: 20),
                       child: ListView.separated(
                           shrinkWrap: true,
                           itemBuilder: (context,index){
                            return  InkWell(
                                onTap: (){
                                  viewModel.navigateToGameScoreView();
                                },
                                child: SoccerCard(openers: viewModel.openers,fullCardView: true,));
                          }
                              , separatorBuilder: (context,index){
                                return const SizedBox(
                                  height: 15,
                                );
                              }, itemCount: 5),
                     ), Padding(
                       padding: const EdgeInsets.only(top: 10.0,bottom: 20),
                       child: ListView.separated(
                           shrinkWrap: true,
                           itemBuilder: (context,index){
                            return  InkWell(
                                onTap: (){
                                  viewModel.navigateToGameScoreView();
                                },
                                child: SoccerCard(openers: viewModel.openers,fullCardView: true,));
                          }
                              , separatorBuilder: (context,index){
                                return const SizedBox(
                                  height: 15,
                                );
                              }, itemCount: 5),
                     ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  SportsEventViewmodel viewModelBuilder(
      BuildContext context,
      ) =>
      SportsEventViewmodel();
}