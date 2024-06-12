import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameDropDown extends StatelessWidget {
  final String dropdownValue;
  final List<String> gameList;
  final void Function(String?)? onChanged;
  const GameDropDown({
    required this.dropdownValue,
    required this.gameList,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFB8C0CA),
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color(0xFFB8C0CA),
            ),
        underline: const SizedBox.shrink(),
        onChanged: onChanged,
        items: gameList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
