import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class NewBetViewmodel extends BaseViewModel {
  String selectedOption = 'Search';
  List<String> types = ['NHL', 'BLB', 'Soccer'];
  setOption(String option) {
    selectedOption = option;
    notifyListeners();
  }

  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToSaveNewBet() {
    // _navigationService.navigateTo(Routes.saveBetView);
  }
}
