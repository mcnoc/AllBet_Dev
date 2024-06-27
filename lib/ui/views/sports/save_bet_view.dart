import 'package:all_bet_info/ui/views/sports/save_bet_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class SaveBetView extends StackedView<SaveBetViewmodel>{
  const SaveBetView({super.key});

  @override
  Widget builder(
      BuildContext context,
      SaveBetViewmodel viewModel,
      Widget? child,
      ) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff111214),
        appBar: AppBar(
        leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed: () {
      Navigator.pop(context);
    },
    ),
    title:  Text('New Bet',style:Theme.of(context).textTheme.titleLarge,),
    actions: [
    Text('Bankroll: \$150',style: Theme.of(context).textTheme.titleLarge),
    const SizedBox(width: 10,)
    ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Text('Bookmaker',style: GoogleFonts.manrope(
                    color:  Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize:16
                ),),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xffB8C0CA)),
                  ),
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select',style: GoogleFonts.manrope(
                          color: const Color(0xffB8C0CA),
                          fontWeight: FontWeight.w600,
                          fontSize:16
                      ),),
                      const Icon(Icons.arrow_forward_ios,color: Color(0xffB8C0CA),size: 12,)
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Text('Bet Type',style: GoogleFonts.manrope(
                    color:  Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize:16
                ),),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xffB8C0CA)),
                  ),
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Goals',style: GoogleFonts.manrope(
                          color: const Color(0xffB8C0CA),
                          fontWeight: FontWeight.w600,
                          fontSize:16
                      ),),
                      const Icon(Icons.arrow_forward_ios,color: Color(0xffB8C0CA),size: 12,)
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Text('Team',style: GoogleFonts.manrope(
                    color:  Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize:16
                ),),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xffB8C0CA)),
                  ),
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Team Name',style: GoogleFonts.manrope(
                          color: const Color(0xffB8C0CA),
                          fontWeight: FontWeight.w600,
                          fontSize:16
                      ),),
                      const Icon(Icons.arrow_forward_ios,color: Color(0xffB8C0CA),size: 12,)
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Text('Bet',style: GoogleFonts.manrope(
                    color:  Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize:16
                ),),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.attach_money),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white,width: 0.7)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white,width: 0.7)
                      ),
                      focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white,width: 0.7)
                      ),
            
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Text('Odd',style: GoogleFonts.manrope(
                    color:  Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize:16
                ),),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xffB8C0CA)),
                  ),
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('0.00',style: GoogleFonts.manrope(
                          color: const Color(0xffB8C0CA),
                          fontWeight: FontWeight.w600,
                          fontSize:16
                      ),),
                      const Icon(Icons.arrow_forward_ios,color: Color(0xffB8C0CA),size: 12,)
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
              ListTile(
                leading:   Switch(
                    activeColor: Colors.white,
                    activeTrackColor: Colors.blue,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.transparent,
                    value: viewModel.publicReport, onChanged: (value){
                  viewModel.changeStatusPublicReport(value);
                }),
                title: Text('Public Report',style: GoogleFonts.manrope(
                fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                )),
                subtitle: Text('All App users will be notified',style: GoogleFonts.manrope(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                )),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      Text('30',style: GoogleFonts.manrope(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.green
                      ),),
                      Text('/3151.20',style: GoogleFonts.manrope(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                      )),
                      const SizedBox(width: 5,),
                      SvgPicture.asset('assets/icons/verify_badge.svg',width: 20,height: 20,),
            
                    ],
                  ),
                ),
            
              ),
                const SizedBox(height: 15,),
                Text('Note',style: GoogleFonts.manrope(
                    color:  Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize:16
                ),),
                const SizedBox(height: 10,),
                TextField(
                  maxLines:7,
                  minLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.white,width: 0.7)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.white,width: 0.7)
                    ),
                    focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.white,width: 0.7)
                    ),
            
                  ),
                ),
                const SizedBox(height: 25,),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal:120),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 10 ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff0075FF)
                    ),
                    child:  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.save,color: Colors.white,),
                        const SizedBox(width: 5,),
                        Text('Track Bet',style:GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ) ,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
              ],
            ),
          ),
        )
      )
    );
  }

  @override
  SaveBetViewmodel viewModelBuilder(
      BuildContext context,
      ) =>
      SaveBetViewmodel();
}