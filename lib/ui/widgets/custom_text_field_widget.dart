import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFromFiield extends StatelessWidget {
  final Widget? prefixIcon;
  const CustomTextFromFiield({
    this.prefixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 14.w,
          vertical: 4.h,
        ),
        hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: const Color(0xFFB8C0CA),
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(color: Color(0xFFB8C0CA)),
        ),
        prefixIcon: prefixIcon,
      ),
    );
  }
}
