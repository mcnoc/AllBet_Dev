import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'all_session_tab_view_model.dart';

class AllSessionTabView extends StackedView<AllSessionTabViewModel> {
  const AllSessionTabView({super.key});

  @override
  Widget builder(
    BuildContext context,
    AllSessionTabViewModel viewModel,
    Widget? child,
  ) {
    return const SizedBox.shrink();
  }

  @override
  AllSessionTabViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AllSessionTabViewModel();
}
