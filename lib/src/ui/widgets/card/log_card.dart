import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ 추가
import 'package:jusicool_design_system/src/core/theme/texts/typography.dart';

class LogCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color buyColor;

  const LogCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buyColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(12.r), // ✅ 적용
        child: Row(
          children: [
            SizedBox(width: 12.w), // ✅ 적용
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.bodySmall,
                ),
                Text(
                  subtitle,
                  style: AppTypography.label.copyWith(
                    color: buyColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
