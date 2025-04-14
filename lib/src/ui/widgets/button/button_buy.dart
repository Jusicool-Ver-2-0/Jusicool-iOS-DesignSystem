import 'package:flutter/material.dart';
import 'package:tes/src/core/theme/colors/color_palette.dart';
import 'package:tes/src/core/theme/texts/typography.dart'; // 텍스트 스타일 import

class ButtonBuy extends StatelessWidget {
  final String buttonText;
  final Color borderColor;
  final Color textColor;

  const ButtonBuy({
    required this.buttonText,
    this.borderColor = AppColor.error,
    this.textColor = AppColor.error,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('$buttonText 클릭!');
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Text(
          buttonText,
          style: AppTypography.bodyMedium.copyWith(
            color: textColor, 
          ),
        ),
      ),
    );
  }
}
