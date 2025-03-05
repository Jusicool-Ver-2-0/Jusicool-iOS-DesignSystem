import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/typography.dart';

class AppButtonMedium extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  const AppButtonMedium({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 313,
      height: 54,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColor.main,
          foregroundColor: textColor ?? AppColor.white,
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: AppTypography.bodyMedium.copyWith(
            color: textColor ?? AppColor.white,
          ),
        ),
      ),
    );
  }
}
