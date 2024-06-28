import 'package:flutter/material.dart';

class BetCardsListView extends StatelessWidget {
  const BetCardsListView(
      {super.key,
      required this.itemCount,
      required this.widget,
      required this.separator});
  final int itemCount;
  final Widget widget;
  final Widget separator;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return widget;
        },
        separatorBuilder: (context, index) {
          return separator;
        },
        itemCount: itemCount);
  }
}
