import 'package:stacked/stacked.dart';

class SaveBetViewmodel extends BaseViewModel {
  bool publicReport = false;

  changeStatusPublicReport(status) {
    publicReport = status;
    notifyListeners();
  }
}
