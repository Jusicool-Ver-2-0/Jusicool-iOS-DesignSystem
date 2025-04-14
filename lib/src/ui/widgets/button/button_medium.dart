import 'package:flutter/material.dart';
import '../../../core/theme/colors/color_palette.dart';
import '../../../core/theme/texts/typography.dart';

class AppButtonMedium extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
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
      width: 312,
      height: 54,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: borderColor,
            ),
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
