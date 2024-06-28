import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UpcomingGameCard extends StatelessWidget {
  UpcomingGameCard({super.key});

  final List options = ['Money Line', 'Spread', 'Total'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff1E2023)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/denver_logo.png',
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text('Denver Nuggets',
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white))
                  ],
                ),
                Text(
                  'vs',
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.4)),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/minnesota_logo.png',
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Minnesota-Timb...',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white.withOpacity(0.4),
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Start Date',
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.4)),
                ),
                Text('May 24,2024',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white))
              ],
            ),
          ),
          Divider(
            color: Colors.white.withOpacity(0.4),
            height: 15,
          ),
          for (int i = 0; i < 3; i++)
            ListTile(
              leading: Text(options[i],
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.4))),
              trailing: SizedBox(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(i == 0
                        ? 'assets/images/down_icon.png'
                        : 'assets/images/up_icon.png'),
                    Text(
                      i == 0 ? '0.00' : '0.13',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: i == 0
                              ? Colors.red.withOpacity(0.8)
                              : Colors.green),
                    ),
                    Image.asset(i == 0
                        ? 'assets/images/m_bet.png'
                        : 'assets/images/b-Bet.png'),
                    Text(
                      '1.87 (-2.5)',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          Divider(
            color: Colors.white.withOpacity(0.4),
            height: 15,
          ),
          ListTile(
            leading: Image.asset('assets/images/b-Bet.png'),
            title: Text('1.87 (-2.5)- DN to Win',
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white)),
            trailing: Text(
              '\$100',
              style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white),
            ),
          )
          // Container(
          //   alignment: Alignment.center,
          //   margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 120),
          //   padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          //   child: Text(
          //     'Ended: May 04, 2024',
          //     style: GoogleFonts.manrope(
          //         fontSize: 12,
          //         fontWeight: FontWeight.w400,
          //         color: Colors.white.withOpacity(0.4)),
          //   ),
          // ),
        ],
      ),
    );
  }
}
