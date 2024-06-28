import 'package:all_bet_info/ui/views/sports/components/ended_game_card.dart';
import 'package:all_bet_info/ui/views/sports/components/live_game_card.dart';
import 'package:all_bet_info/ui/views/sports/watching_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'components/upcoming_game_card.dart';

class WatchingView extends StackedView<WatchingViewmodel> {
  const WatchingView({super.key});

  @override
  Widget builder(
      BuildContext context,
      WatchingViewmodel viewModel,
      Widget? child,
      ) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xff111214),
      appBar: AppBar(
        title: Text('Watching',style: Theme.of(context).textTheme.bodySmall,),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const EndedGameCard(),
              const SizedBox(height: 15,),
              const LiveGameCard(),
              const SizedBox(height: 15,),
              UpcomingGameCard(),
              const SizedBox(height: 15,),

              const EndedGameCard(),
              const SizedBox(height: 15,),
              const LiveGameCard(),
              const SizedBox(height: 15,),
              UpcomingGameCard()
            ],
          ),
        ),
      ),
    ));
  }

  @override
  WatchingViewmodel viewModelBuilder(
      BuildContext context,
      ) =>
      WatchingViewmodel();
}