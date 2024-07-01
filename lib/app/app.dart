import 'package:all_bet_info/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:all_bet_info/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:all_bet_info/ui/views/home/home_view.dart';
import 'package:all_bet_info/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:all_bet_info/ui/views/select_interested_in/select_interested_in_view.dart';
import 'package:all_bet_info/ui/views/navigation/navigation_view.dart';
import 'package:all_bet_info/ui/views/poker/poker_view.dart';
import 'package:all_bet_info/ui/views/poker/new_poker_session/new_poker_session_view.dart';
import 'package:all_bet_info/ui/views/sports/sports_view.dart';
import 'package:all_bet_info/ui/views/casino/casino_view.dart';
import 'package:all_bet_info/ui/views/new_casino_session/new_casino_session_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SelectInterestedInView),
    MaterialRoute(page: NavigationView),
    MaterialRoute(page: PokerView),
    MaterialRoute(page: NewPokerSessionView),
    MaterialRoute(page: SportsView),
    MaterialRoute(page: CasinoView),
    MaterialRoute(page: NewCasinoSessionView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
