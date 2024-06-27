import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class SportsViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();


  void navigateToCreateNewBet() {
    _navigationService.navigateTo(Routes.newBetView);
  }
}
