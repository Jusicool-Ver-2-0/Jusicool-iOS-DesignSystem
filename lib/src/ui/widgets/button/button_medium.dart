import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/texts/typography.dart';

class AppButtonMedium extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  const AppButtonMedium({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 312.w,
      height: 54.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(WidgetState.disabled)) {
                return backgroundColor;
              }
              return backgroundColor;
            },
          ),
          foregroundColor: WidgetStateProperty.all(textColor),
          padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: BorderSide(
                color: borderColor,
                width: 1.w,
              ),
            ),
          ),
        ),
        child: Text(
          text,
          style: JusicoolTypography.bodyMedium.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
