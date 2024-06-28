import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EndedGameCard extends StatelessWidget {
  const EndedGameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff1E2023)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/kc_logo.png',
                    height: 80,
                    width: 80,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Kansas City Chiefs',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.white.withOpacity(0.4))),
                      IconButton(
                          onPressed: () {},
                          icon:
                              SvgPicture.asset('assets/icons/looss_icon.svg')),
                    ],
                  )
                ],
              ),
              RichText(
                text: TextSpan(
                    text: '10 - ',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.4)),
                    children: <TextSpan>[
                      TextSpan(
                          text: '16',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white))
                    ]),
              ),
              Column(
                children: [
                  Image.asset('assets/images/b_logo.png',
                      height: 80, width: 80),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/win_icon.svg')),
                      Text(
                        'Baltimore-Ravens',
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 120),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Text(
              'Ended: May 04, 2024',
              style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(0.4)),
            ),
          ),
        ],
      ),
    );
  }
}
