import 'package:stacked/stacked.dart';

class MoreViewmodel extends BaseViewModel {
  List<Map<String, String>> options = [
    {
      'title': 'User Settings',
      'svg_path': 'assets/icons/more_icons/user_settings.svg'
    },
    {
      'title': 'Games rules',
      'svg_path': 'assets/icons/more_icons/game_rules.svg'
    },
    {'title': 'Settings', 'svg_path': 'assets/icons/more_icons/settings.svg'},
    {
      'title': 'Preferences',
      'svg_path': 'assets/icons/more_icons/preferences.svg'
    },
    {'title': 'Support', 'svg_path': 'assets/icons/more_icons/support.svg'},
    {'title': 'About App', 'svg_path': 'assets/icons/more_icons/about_app.svg'},
    {'title': 'Log Out', 'svg_path': 'assets/icons/more_icons/log_out.svg'},
  ];
}
