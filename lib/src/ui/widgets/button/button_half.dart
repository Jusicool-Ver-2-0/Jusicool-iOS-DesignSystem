import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../jusicool_design_system.dart'; // ✅ 추가

class AppButtonHalf extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  const AppButtonHalf({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r), // ✅ 적용
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r), // ✅ 적용
            side: BorderSide(color: borderColor, width: 1.w), // ✅ 적용
          ),
        ),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h), // ✅ 적용
          child: Text(
            text,
            style: JusicoolTypography.bodyMedium.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
