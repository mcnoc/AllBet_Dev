import 'package:all_bet_info/ui/views/more/more_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class MoreView extends StackedView<MoreViewmodel> {
  const MoreView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MoreViewmodel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                'More',
                style: GoogleFonts.manrope(
                    fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 35,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                            color: const Color(0xff1E2023),
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(viewModel.options[index]
                                    ['svg_path']
                                .toString()),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${viewModel.options[index]['title']}",
                              style: GoogleFonts.manrope(
                                  color: index == 6
                                      ? const Color(0xffF66F6F)
                                      : Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      if (index > 4) {
                        return Divider(
                          thickness: 1,
                          height: 25,
                          color: Colors.white.withOpacity(0.1),
                        );
                      } else {
                        return const SizedBox(
                          height: 20,
                        );
                      }
                    },
                    itemCount: viewModel.options.length),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  MoreViewmodel viewModelBuilder(
    BuildContext context,
  ) =>
      MoreViewmodel();
}
