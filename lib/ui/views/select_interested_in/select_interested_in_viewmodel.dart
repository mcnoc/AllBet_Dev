import 'package:all_bet_info/app/app.locator.dart';
import 'package:all_bet_info/app/app.router.dart';
import 'package:all_bet_info/constant/interested_list.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SelectInterestedInViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  List<String> selectedInterestedList = [];

  void updateSelectedInterestedList(String interested) {
    if (selectedInterestedList.length == 4) {
      return;
    }
    if (selectedInterestedList.contains(interested)) {
      selectedInterestedList.remove(interested);
    } else {
      selectedInterestedList.add(interested);
    }
    notifyListeners();
  }

  void navigateToHomeView() {
    _navigationService.navigateTo(Routes.navigationView);
  }
}
