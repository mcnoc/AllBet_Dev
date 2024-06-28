import 'package:all_bet_info/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SoccerCard extends StatelessWidget {
  const SoccerCard({super.key, required this. openers, required this.fullCardView});

  final List<String> openers;
  final bool fullCardView;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color:  Colors.white.withOpacity(0.1))
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: 25,
                    child: SvgPicture.asset('assets/icons/dallas_logo.svg',
                    color: Colors.white,)),
                const SizedBox(width: 10,),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dallas',style:  GoogleFonts.manrope(
                      fontSize: 14.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                    ),),
                    Text('61-37',style: GoogleFonts.manrope(
                      fontSize: 12.sp,
                      color: const Color(0xffB8C0CA),
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),),
                  ],
                ),
                // const SizedBox(width: 15,),
                Column(
                  children: [
                    Text('vs',style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color(0xffB8C0CA).withOpacity(0.2),
                      // height: 21.86

                    ),),
                    Text('May 24,2024',style:GoogleFonts.manrope(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: const Color(0xffB8C0CA),
                      // height: 16.39
                    ) ,)
                  ],
                ),
                const SizedBox(width: 5,),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Minnesota',style:  GoogleFonts.manrope(
                      fontSize: 14.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                    ),),
                    Text('65-32',style: GoogleFonts.manrope(
                      fontSize: 12.sp,
                      color: const Color(0xffB8C0CA),
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),),
                  ],
                ),
                const SizedBox(width: 10,),
                CircleAvatar(
                    radius: 25,
                    child: SvgPicture.asset('assets/icons/dallas_logo.svg',
                      color: Colors.white,)),
              ],
            ),
          ),
          Divider(
            height: 10,
            color: Colors.white.withOpacity(0.1),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Caesars: +4½ -105',style: GoogleFonts.manrope(
                color: const Color(0xffB8C0CA),
                fontSize: 12
              ),),
              SizedBox(width: 10,),
              Text('53%',style: GoogleFonts.manrope(
                color:  Colors.green,
                fontSize: 12
              ),),
              const SizedBox(width: 10,),
              Text('/',style: GoogleFonts.manrope(
                color: const Color(0xffB8C0CA),
                fontSize: 12
              ),),
              const SizedBox(width: 10,),
              Text('47%',style: GoogleFonts.manrope(
                color:  const Color(0xffF66F6F),
                fontSize: 12
              ),),
              const SizedBox(width: 10,),
              Text('Bet 365: -4½ -105',style: GoogleFonts.manrope(
                color: const Color(0xffB8C0CA),
                fontSize: 12
              ),),

            ],
          ),
          // Divider(
          //   height: 10,
          //   color: Colors.white.withOpacity(0.1),
          // ),
          const SizedBox(height: 10,),
          if(fullCardView)
          for(int i=0;i<5;i++)
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal:5),
                    decoration: BoxDecoration(
                      color: const Color(0xff252629),
                      border: Border(top: BorderSide(color: Colors.white.withOpacity(0.1)),bottom:BorderSide(color: Colors.white.withOpacity(0.1)) )
                    ),
                    child:  Text(i==0?'Opener':openers[i],style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,

                    ),
                    textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal:5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xff21e2023),
                      border: Border(top: BorderSide(color: Colors.white.withOpacity(0.1)),bottom:BorderSide(color: Colors.white.withOpacity(0.1)) )
                    ),
                    child: RichText(text:TextSpan(
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
                    ) ,
                  ),
                ),
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal:5),
                      alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xff21e2023),
                      border: Border(
                          left:BorderSide(color: Colors.white.withOpacity(0.1)) ,
                          top: BorderSide(color: Colors.white.withOpacity(0.1)),bottom:BorderSide(color: Colors.white.withOpacity(0.1)) )
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
                ),
              ],
            ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
