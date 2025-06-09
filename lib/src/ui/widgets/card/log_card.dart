import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../jusicool_design_system.dart'; // ✅ 추가

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
    return Padding(
      padding: EdgeInsets.all(12.r), // ✅ 적용
      child: Row(
        children: [
          SizedBox(width: 12.w), // ✅ 적용
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: JusicoolTypography.bodySmall,
              ),
              Text(
                subtitle,
                style: JusicoolTypography.label.copyWith(
                  color: buyColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
