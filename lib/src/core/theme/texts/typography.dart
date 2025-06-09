import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../jusicool_design_system.dart';

class JusicoolTypography {
  static final String _fontFamily = 'Pretendard';
  static TextStyle titleLarge = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 48.sp,
    // ✅ 적용
    height: 1.208,
    letterSpacing: 0,
    color: JusicoolColor.black,
  );

  static TextStyle titleMedium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 36.sp,
    // ✅ 적용
    height: 1.194,
    letterSpacing: 0,
    color: JusicoolColor.black,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    // ✅ 적용
    height: 1.292,
    letterSpacing: 0,
    color: JusicoolColor.black,
  );

  static TextStyle subTitle = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    // ✅ 적용
    height: 1.5,
    letterSpacing: 0,
    color: JusicoolColor.black,
  );

  static TextStyle bodyMedium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    // ✅ 적용
    height: 1.375,
    letterSpacing: 0,
    color: JusicoolColor.black,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    // ✅ 적용
    height: 1.375,
    letterSpacing: 0,
    color: JusicoolColor.black,
  );

  static TextStyle label = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    // ✅ 적용
    height: 1.333,
    letterSpacing: 0,
    color: JusicoolColor.black,
  );

  static TextStyle navi = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 8.sp,
    // ✅ 적용
    height: 1.5,
    letterSpacing: 0,
    color: JusicoolColor.black,
  );
}
