import 'package:flutter/material.dart';
import '../../../core/theme/colors/color_palette.dart';
import '../../../core/theme/texts/typography.dart';

class StockCard extends StatelessWidget {
  final String companyName;
  final String logoUrl;
  final String price;
  final String priceChange;
  final String share;
  final bool isPositive;

  const StockCard({
    super.key,
    required this.companyName,
    required this.logoUrl,
    required this.price,
    required this.priceChange,
    required this.share,
    this.isPositive = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                logoUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                companyName,
                style: AppTypography.bodyMedium,
              ),
              const SizedBox(height: 4),
              Text(
                share,
                style: AppTypography.label.copyWith(
                  color: AppColor.gray500,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: AppTypography.bodyMedium,
              ),
              const SizedBox(height: 4),
              Text(
                priceChange,
                style: AppTypography.label.copyWith(
                  color: isPositive ? AppColor.main : AppColor.error,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
