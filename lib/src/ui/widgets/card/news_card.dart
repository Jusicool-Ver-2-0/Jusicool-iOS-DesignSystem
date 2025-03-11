import 'package:flutter/material.dart';
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
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: AppTypography.label.copyWith(
                  color: AppColor.gray500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imageUrl,
            width: 90,
            height: 90,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
