import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDown extends StatelessWidget {
  final String dropdownValue;
  final List<String> gameList;
  final void Function(String?)? onChanged;
  const CustomDropDown({
    required this.dropdownValue,
    required this.gameList,
    required this.onChanged,
    super.key,
  });

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
        icon: const Icon(CupertinoIcons.chevron_forward),
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
