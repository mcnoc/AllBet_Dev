import 'package:all_bet_info/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';

class NewCasinoSessionViewModel extends BaseViewModel {
  String placeDropDownValue = "Select";
  List<String> placeDropDownList = ["Select", "Place A", "Place B", "Place C"];
  onPlaceDropDownChanged(String? value) {
    placeDropDownValue = value!;
    notifyListeners();
  }

  String slotMachineDropDownValue = "Select";
  List<String> slotMachineDropDownList = ["Select", "Slot Machine A", "Slot Machine B", "Slot Machine C"];
  onSlotMachineDropDownChanged(String? value) {
    slotMachineDropDownValue = value!;
    notifyListeners();
  }

  String gameSpeedDropDownValue = "Select";
  List<String> gameSpeedDropDownList = ["Select", "Game Speed A", "Game Speed B", "Game Speed C"];
  onGameSpeedDropDownChanged(String? value) {
    gameSpeedDropDownValue = value!;
    notifyListeners();
  }

  //   static const String insta = '$path/insta.svg';
  // static const String facebook = '$path/facebook.svg';
  // static const String twiterX = '$path/twiterX.svg';
  // static const String tikTok = '$path/tikTok.svg';
  // static const String share = '$path/share.svg';

  List<String> shareingIcons = [
    AppIcons.insta,
    AppIcons.facebook,
    AppIcons.twiterX,
    AppIcons.tikTok,
    AppIcons.share,
  ];
}
