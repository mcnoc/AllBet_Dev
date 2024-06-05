import 'package:all_bet_info/app/app.locator.dart';
import 'package:all_bet_info/app/app.router.dart';
import 'package:all_bet_info/app/constant/interested_list.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SelectInterestedInViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  List<String> selectedInterestedList = [];

  void updateSelectedInterestedList(String interested) {
    //TODO: Change this logic as there will not be any snakbar if there is max selected items
    if (selectedInterestedList.length < maxInterestedSelection) {
      if (selectedInterestedList.contains(interested)) {
        selectedInterestedList.remove(interested);
      } else {
        selectedInterestedList.add(interested);
      }
      notifyListeners();
    } else {
      // Show a snackbar or dialog to inform the user that they can only select 4 items
    }
  }

  void navigateToHomeView() {
    _navigationService.navigateTo(Routes.homeView);
  }
}
