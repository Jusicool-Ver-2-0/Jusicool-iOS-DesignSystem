import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ 추가
import '../../../../jusicool_design_system.dart';

class MonthStockCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String decimal;
  final String imageUrl;

  const MonthStockCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.decimal,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312.w, // ✅ 적용
      height: 40.h, // ✅ 적용
      margin: EdgeInsets.all(16.r), // ✅ 적용
      child: Padding(
        padding: EdgeInsets.all(8.r), // ✅ 적용
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 16.r, // ✅ 적용
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(width: 8.w), // ✅ 적용
            Text(title, style: JusicoolTypography.subTitle),
            Expanded(
              child: SizedBox(),
            ),
            Text(
              subtitle,
              style: JusicoolTypography.bodySmall.copyWith(
                color: JusicoolColor.error,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
