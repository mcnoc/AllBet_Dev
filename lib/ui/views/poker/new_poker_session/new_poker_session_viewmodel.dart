import 'package:stacked/stacked.dart';

class NewPokerSessionViewModel extends BaseViewModel {
  //

  String dropdownValue = 'Texas Holdem';
  updateDropDownValue(String value) {
    dropdownValue = value;
    notifyListeners();
  }

  List<String> gameList = [
    'Texas Holdem',
    'Omaha',
    'Omaha Hi/Lo',
    '7 Card Stud',
    'Razz',
  ];

  int selectedBtnIndex = 0;
  updateSelectedBtnIndex(int index) {
    selectedBtnIndex = index;
    notifyListeners();
  }
}
