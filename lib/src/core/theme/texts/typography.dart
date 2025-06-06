import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ 추가
import 'package:jusicool_design_system/src/core/theme/colors/color_palette.dart';

class AppTypography {
  static TextStyle titleLarge = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
    fontSize: 48.sp, // ✅ 적용
    height: 1.208,
    letterSpacing: 0,
    color: AppColor.black,
  );

  static TextStyle titleMedium = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
    fontSize: 36.sp, // ✅ 적용
    height: 1.194,
    letterSpacing: 0,
    color: AppColor.black,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
    fontSize: 24.sp, // ✅ 적용
    height: 1.292,
    letterSpacing: 0,
    color: AppColor.black,
  );

  static TextStyle subTitle = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
    fontSize: 18.sp, // ✅ 적용
    height: 1.5,
    letterSpacing: 0,
    color: AppColor.black,
  );

  static TextStyle bodyMedium = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
    fontSize: 16.sp, // ✅ 적용
    height: 1.375,
    letterSpacing: 0,
    color: AppColor.black,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
    fontSize: 16.sp, // ✅ 적용
    height: 1.375,
    letterSpacing: 0,
    color: AppColor.black,
  );

  static TextStyle label = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
    fontSize: 12.sp, // ✅ 적용
    height: 1.333,
    letterSpacing: 0,
    color: AppColor.black,
  );

  static TextStyle navi = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w600,
    fontSize: 8.sp, // ✅ 적용
    height: 1.5,
    letterSpacing: 0,
    color: AppColor.black,
  );
}
