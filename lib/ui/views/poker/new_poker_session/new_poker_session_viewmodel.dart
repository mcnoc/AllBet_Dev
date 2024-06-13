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

  List<String> limitTypeStrings = [
    'NL - No Limit',
    'PL - Pot Limit',
    'NL2-NL10, FL4-FL20',
    'NL20-NL100, FL50-FL100',
    'NL200-NL800, FL200-FL600',
    'NL1000-NL8000, FL1000-FL6000',
    'NL10000+ , FL10000',
  ];
}
