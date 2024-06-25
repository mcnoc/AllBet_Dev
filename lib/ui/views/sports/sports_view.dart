import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'sports_viewmodel.dart';

class SportsView extends StackedView<SportsViewModel> {
   const SportsView({Key? key}) : super(key: key);
 

  @override
  Widget builder(
    BuildContext context,
    SportsViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('Sports',style: GoogleFonts.manrope(
                      color: Colors.white,
                      fontSize: 24,
                       fontWeight: FontWeight.w600
                    ),),
                    SvgPicture.asset('assets/icons/settings.svg')
                  ],
                ),
                10.verticalSpace,
                TextField(
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
                20.verticalSpace,
                Text('Best offers',style: GoogleFonts.manrope(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),),
                // 10.verticalSpace,
                SizedBox(
                  height: MediaQuery.sizeOf(context).height*0.2,
                  child: ListView.separated(
                    separatorBuilder: (context,index){
                      return const VerticalDivider(width: 10,color: Colors.transparent,);
                    },
                    itemCount: 1,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                    return Container(
                        height: 200,
                        width: 200,
                        child: const Image(image: AssetImage('assets/images/best_offers.png',),));
                  }),
                ),
                10.verticalSpace,
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.sizeOf(context).width,
                  child: const Image(image: AssetImage('assets/images/dots.png')),
                ),
                15.verticalSpace,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  alignment: Alignment.topLeft,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    color: Color(0xff111214)
                  ),
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        15.verticalSpace,
                        Text('Search odds',style: GoogleFonts.manrope(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                        15.verticalSpace,
                        SizedBox(
                          height: 70,
                          child: ListView.separated(
                            separatorBuilder: (context,index){
                              return const VerticalDivider(
                                color: Colors.transparent,
                                width: 10,
                              );
                            },
                            scrollDirection: Axis.horizontal,
                              itemCount: 1,
                              itemBuilder: (context,index){
                            return
                              SvgPicture.asset('assets/icons/NFL.svg',height: 60,)

                              /*Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red
                              ),
                              child:
                              *//* Column(
                                children: [
                                  Text('NFL',style: GoogleFonts.manrope(
                                    fontSize: 12,
                                    color: Colors.white
                                  ),),
                                  SvgPicture.asset('assets/icons/icSports.svg'),
                                ],
                              ),*//*
                            )*/;
                          }),
                        ),
                        15.verticalSpace,
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.sizeOf(context).width,
                          child: const Image(image: AssetImage('assets/images/dots.png')),
                        ),
                        20.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Bookmakers near you',style: GoogleFonts.manrope(
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                            ),),
                            Text('View all >',style: GoogleFonts.manrope(
                              color: Colors.blueAccent,
                              fontSize: 14,
                            ),)
                          ],
                        ),
                        15.verticalSpace,
                        SizedBox(
                          height: 220,
                          child: ListView.separated(
                              separatorBuilder: (context,index){
                                return const VerticalDivider(
                                  color: Colors.transparent,
                                  width: 10,
                                );
                              },
                              scrollDirection: Axis.horizontal,
                              itemCount: 1,
                              itemBuilder: (context,index){
                                return
                                  SvgPicture.asset('assets/icons/Bets.svg',height: 200,)

                                /*Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red
                              ),
                              child:
                              */
                                /*
                              Column(
                                children: [
                                  Text('NFL',style: GoogleFonts.manrope(
                                    fontSize: 12,
                                    color: Colors.white
                                  ),),
                                  SvgPicture.asset('assets/icons/icSports.svg'),
                                ],
                              ),*/
                                /*
                            )*/;
                              }),
                        ),
                        15.verticalSpace,
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.sizeOf(context).width,
                          child: const Image(image: AssetImage('assets/images/dots.png')),
                        ),
                        15.verticalSpace,

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Watching',style: GoogleFonts.manrope(
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                            ),),
                            Text('View all >',style: GoogleFonts.manrope(
                              color: Colors.blueAccent,
                              fontSize: 14,
                            ),)
                          ],
                        ),
                        15.verticalSpace,
                        SvgPicture.asset('assets/icons/watching.svg'),
                        15.verticalSpace,
                        Align(
                          alignment: Alignment.center,
                          child: Text('View all',style: GoogleFonts.manrope(
                            color: Colors.blueAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),),
                        ),
                        15.verticalSpace,

                      ],
                    ),
                  ),
                ),
                DefaultTabController(

                    length: 3,
                    child: SingleChildScrollView(
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
                              const Tab(text: 'Analytics',),
                              const Tab(text: 'Most Profitable', ),
                              const Tab(text: 'All',),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height,

                            child: TabBarView(
                              children: [
                                Container(
                                  color: Colors.black,
                                  height: MediaQuery.sizeOf(context).height,
                                  width: MediaQuery.sizeOf(context).width,
                                  child: SvgPicture.asset('assets/icons/trades.svg'),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 15),
                                  color: Colors.black,
                                  height: MediaQuery.sizeOf(context).height,
                                  width: MediaQuery.sizeOf(context).width,
                                  child: ListView.separated(
                                    physics: const NeverScrollableScrollPhysics(),
                                    separatorBuilder: (context,index){
                                      return const SizedBox(height: 15,);
                                    },
                                    itemBuilder: (context,index){
                                      return SvgPicture.asset('assets/icons/match_card.svg');
                                    }, itemCount: 2,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 15),
                                  color: Colors.black,
                                  height: MediaQuery.sizeOf(context).height,
                                  width: MediaQuery.sizeOf(context).width,
                                  child: ListView.separated(
                                    physics: const NeverScrollableScrollPhysics(),
                                    separatorBuilder: (context,index){
                                      return const SizedBox(height: 15,);
                                    },
                                    itemBuilder: (context,index){
                                      return SvgPicture.asset('assets/icons/match_card.svg');
                                    }, itemCount: 2,
                                  ),
                                ),


                                // AnalyticsTab(),
                                // MostProfitableTab(),
                                // AllTab(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  SportsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SportsViewModel();
}
