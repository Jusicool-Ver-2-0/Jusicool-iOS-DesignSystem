import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ 추가
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
      padding: EdgeInsets.all(16.w), // ✅ 적용
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(12.r), // ✅ 적용
      ),
      child: Row(
        children: [
          SizedBox(
            width: 40.w, // ✅ 적용
            height: 40.h, // ✅ 적용
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r), // ✅ 적용
              child: Image.network(
                logoUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.w), // ✅ 적용
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                companyName,
                style: AppTypography.bodyMedium,
              ),
              SizedBox(height: 4.h), // ✅ 적용
              Text(
                share,
                style: AppTypography.label.copyWith(
                  color: AppColor.gray500,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: AppTypography.bodyMedium,
              ),
              SizedBox(height: 4.h), // ✅ 적용
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
