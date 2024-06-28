import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class SportsEventViewmodel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  List<String> openers = [
    '',
    'Caesars Sportsbook',
    'Bet 365',
    'Bet River',
    'Sugar House'
  ];

  void navigateToGameScoreView() {
    _navigationService.navigateTo(Routes.gameScoreView);
  }
}
