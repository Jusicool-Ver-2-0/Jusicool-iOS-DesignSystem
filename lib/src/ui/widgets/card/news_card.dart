import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ 추가
import '../../../core/theme/colors/color_palette.dart';
import '../../../core/theme/texts/typography.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const NewsCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTypography.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.h), // ✅ 적용
              Text(
                subtitle,
                style: AppTypography.label.copyWith(
                  color: AppColor.gray500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 12.w), // ✅ 적용
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r), // ✅ 적용
          child: Image.network(
            imageUrl,
            width: 90.w, // ✅ 적용
            height: 90.h, // ✅ 적용
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
