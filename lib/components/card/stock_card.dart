import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../theme/typography.dart';

class StockCard extends StatelessWidget {
  final String companyName;
  final String logoUrl;
  final String price;
  final String priceChange;
  final bool isPositive;

  const StockCard({
    super.key,
    required this.companyName,
    required this.logoUrl,
    required this.price,
    required this.priceChange,
    this.isPositive = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColor.gray300,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: AppColor.gray300,
                width: 1,
              ),
            ),
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
                '123주',
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
                '11,111,131 원',
                style: AppTypography.bodyMedium,
              ),
              const SizedBox(height: 4),
              Text(
                '+111,1816 (7.9%)',
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
