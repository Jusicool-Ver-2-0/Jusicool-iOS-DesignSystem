import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/colors/color_palette.dart';
import '../../../core/theme/texts/typography.dart';

class ButtonBuy extends StatelessWidget {
  final String buttonText;
  final Color borderColor;
  final Color textColor;

  const ButtonBuy({
    super.key,
    required this.buttonText,
    this.borderColor = JusicoolColor.error,
    this.textColor = JusicoolColor.error,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('$buttonText 클릭!');
      },
      borderRadius: BorderRadius.circular(12.r), // ✅ 적용
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), // ✅ 적용
          border: Border.all(
            color: borderColor,
            width: 1.w, // ✅ 적용
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 16.h, // ✅ 적용
          horizontal: 32.w, // ✅ 적용
        ),
        child: Text(
          buttonText,
          style: JusicoolTypography.bodyMedium.copyWith(
            color: textColor, // ❌ 적용할 필요 없음
          ),
        ),
      ),
    );
  }
}
