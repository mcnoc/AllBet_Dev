import 'package:all_bet_info/ui/views/sports/components/soccer_card.dart';
import 'package:all_bet_info/ui/views/sports/game_score_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';


class GameScoreView extends StackedView<GameScoreViewmodel> {
  const GameScoreView({super.key});

  @override
  Widget builder(
      BuildContext context,
      GameScoreViewmodel viewModel,
      Widget? child,
      ) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xff111214),
      appBar: AppBar(
        title: Text('Football Event',style: Theme.of(context).textTheme.bodySmall,),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
      ),
      body: Column(
        children: [
          const SoccerCard(openers: [], fullCardView: false),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Dallas',style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(0.6)
                ),),
                SizedBox(width: 10,),
                Text('Minnesota ',style: GoogleFonts.manrope(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.6)
                ),),

              ],
            ),
          ),
          for(int i=0;i<6;i++)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/trophy.png'),
                  const SizedBox(width: 10,),
                  Text('Caesars \nSportsbook',style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white
                  ),),
                  const SizedBox(width: 50,),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal:5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xff2D3138),
                        borderRadius: BorderRadius.circular(8),
                        // border: Border.all(color:Colors.white.withOpacity(0.2))

                      ),
                      child:
                      RichText(text:TextSpan(
                          text: '+4½',
                          style:  GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffB8C0CA)
                          ),
                          children:<TextSpan> [
                            TextSpan(
                                text:  ' -115',
                                style: GoogleFonts.manrope(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.lightGreenAccent
                                )
                            )
                          ]
                      )
                      )

                  ),
                  const SizedBox(width: 5,),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal:5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xff2D3138),
                          borderRadius: BorderRadius.circular(8),
                          // border: Border.all(color:Colors.white.withOpacity(0.2))

                      ),
                      child:
                      RichText(text:TextSpan(
                          text: '+4½',
                          style:  GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffB8C0CA)
                          ),
                          children:<TextSpan> [
                            TextSpan(
                                text:  ' -115',
                                style: GoogleFonts.manrope(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.lightGreenAccent
                                )
                            )
                          ]
                      )
                      )

                  ),
                  const SizedBox(width: 45,),

                ],
              ),
            ),
          const SizedBox(height: 50,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width*0.35),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xff0075FF),
              borderRadius: BorderRadius.circular(8)
            ),
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            child: Text('Track Bet',style: GoogleFonts.manrope(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),),
          )
        ],
      ),
    ));
  }

  @override
  GameScoreViewmodel viewModelBuilder(
      BuildContext context,
      ) =>
      GameScoreViewmodel();
}