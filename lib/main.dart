import 'package:all_bet_info/ui/common/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:all_bet_info/app/app.bottomsheets.dart';
import 'package:all_bet_info/app/app.dialogs.dart';
import 'package:all_bet_info/app/app.locator.dart';
import 'package:all_bet_info/app/app.router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const double _designWidth = 375;
  static const double _designHeight = 812;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(_designWidth, _designHeight),
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              currentFocus.focusedChild!.unfocus();
            }
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.startupView,
            theme: AppTheme.darkTheme,
            themeMode: ThemeMode.dark,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            navigatorObservers: [
              StackedService.routeObserver,
            ],
          ),
        );
      },
    );
  }
}
