import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BetCard extends StatelessWidget {
  const BetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      width: MediaQuery.sizeOf(context).width,
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black12, width: 1),
          color: const Color(0xff1E2023)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Today 4:40PM',
                style: GoogleFonts.manrope(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.18,
              ),
              Text(
                'Run Line',
                style: GoogleFonts.manrope(
                    color: Colors.grey,
                    fontSize: 11,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                width: 25,
              ),
              Text('Total',
                  style: GoogleFonts.manrope(
                      color: Colors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.w400)),
              const SizedBox(
                width: 30,
              ),
              Text('Money Line',
                  style: GoogleFonts.manrope(
                      color: Colors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.w400)),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset('assets/icons/rays.svg',height: 50,color: Colors.white,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TB Rays',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                  Text(
                    'Aaron Civale',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color(0xffB8C0CA)),
                  ),
                ],
              ),
              const SizedBox(width: 40,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff2D3138)
                ),
                child: const Column(
                  children: [
                    Text('+4½',style: TextStyle(
                      color: Color(0xffB8C0CA),
                      fontWeight: FontWeight.w500,
                      fontSize: 10
                    ),),
                    Text('-115',style: TextStyle(
                        color: Color(0xff8AF66F),
                        fontSize: 10,
                      fontWeight: FontWeight.w500
                    ),)
                  ],
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff2D3138)
                ),
                child: const Column(
                  children: [
                    Text('-4½',style: TextStyle(
                      color: Color(0xffB8C0CA),
                      fontWeight: FontWeight.w500,
                      fontSize: 10
                    ),),
                    Text('-1112',style: TextStyle(
                        color: Color(0xff8AF66F),
                      fontSize: 10,
                      fontWeight: FontWeight.w500
                    ),)
                  ],
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff2D3138)
                ),
                child: const Text('+102',style: TextStyle(
                  color: Color(0xff8AF66F),
                  fontSize: 10,
                  fontWeight: FontWeight.w500
                ),),
              ),
            ],
          ),
          const SizedBox(height: 5,),
          Row(
            children: [
              SvgPicture.asset('assets/icons/rays.svg',height: 50,color: Colors.white,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mia Marlins',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                  Text(
                    'Sandy Alcantara',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color(0xffB8C0CA)),
                  ),
                ],
              ),
              const SizedBox(width: 18,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff2D3138)
                ),
                child: const Column(
                  children: [
                    Text('+4½',style: TextStyle(
                        color: Color(0xffB8C0CA),
                        fontWeight: FontWeight.w500,
                        fontSize: 10
                    ),),
                    Text('-115',style: TextStyle(
                        color: Color(0xff8AF66F),
                        fontSize: 10,
                        fontWeight: FontWeight.w500
                    ),)
                  ],
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff2D3138)
                ),
                child: const Column(
                  children: [
                    Text('-4½',style: TextStyle(
                        color: Color(0xffB8C0CA),
                        fontWeight: FontWeight.w500,
                        fontSize: 10
                    ),),
                    Text('-1112',style: TextStyle(
                        color: Color(0xff8AF66F),
                        fontSize: 10,
                        fontWeight: FontWeight.w500
                    ),)
                  ],
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff2D3138)
                ),
                child: const Text('+102',style: TextStyle(
                    color: Color(0xff8AF66F),
                    fontSize: 10,
                    fontWeight: FontWeight.w500
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
