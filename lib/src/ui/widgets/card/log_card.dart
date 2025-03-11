import 'package:flutter/material.dart';
import 'package:tes/src/core/theme/texts/typography.dart';

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
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            SizedBox(width: 12),
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
