import 'package:flutter/material.dart';
import '../../../core/theme/colors/color_palette.dart';
import '../../../core/theme/texts/typography.dart';
import 'package:tes/src/core/theme/texts/dimensions.dart';

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
      width: AppDimensions.buttonWidth,
      height: AppDimensions.buttonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.buttonBorderRadius),
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
