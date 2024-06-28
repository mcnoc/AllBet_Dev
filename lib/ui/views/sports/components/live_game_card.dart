import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveGameCard extends StatelessWidget {
  const LiveGameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, right: 5, left: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
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
                  Image.asset('assets/images/manchester.png'),
                  Text('Manchester City',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.white))
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                '1-0',
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Image.asset('assets/images/MU.png'),
                  Text(
                    'Manchester United',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white),
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
            decoration: BoxDecoration(
                color: const Color(0xff0075FF),
                borderRadius: BorderRadius.circular(6)),
            child: Text(
              'Live : 15:31',
              style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          Divider(
            height: 10,
            color: Colors.white.withOpacity(0.2),
          ),
          ListTile(
            leading: Image.asset('assets/images/m_bet.png'),
            title: Text(
              '1.78 - MU to Win',
              style: GoogleFonts.manrope(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            trailing: Text(
              '\$50',
              style: GoogleFonts.manrope(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
