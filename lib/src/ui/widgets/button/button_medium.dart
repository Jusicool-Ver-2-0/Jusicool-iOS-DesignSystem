import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ 추가
import '../../../core/theme/colors/color_palette.dart';
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
      width: 312.w, // ✅ 적용
      height: 54.h, // ✅ 적용
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          padding: EdgeInsets.symmetric(
            horizontal: 32.w, // ✅ 적용
            vertical: 16.h, // ✅ 적용
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r), // ✅ 적용
            side: BorderSide(
              color: borderColor,
              width: 1.w, // ✅ 필요시 적용 (기본값 1로 생략 가능)
            ),
          ),
        ),
        child: Text(
          text,
          style: AppTypography.bodyMedium.copyWith(
            color: textColor ?? AppColor.white, // ❌ screenutil과 무관
          ),
        ),
      ),
    );
  }
}
