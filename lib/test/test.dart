import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jusicool_design_system/src/core/theme/colors/color_palette.dart';
import 'package:jusicool_design_system/src/core/theme/texts/typography.dart';
import 'package:jusicool_design_system/src/ui/widgets/button/button_buy.dart';
import 'package:jusicool_design_system/src/ui/widgets/button/button_half.dart';
import 'package:jusicool_design_system/src/ui/widgets/button/button_medium.dart';
import 'package:jusicool_design_system/src/ui/widgets/button/toggle_button.dart';
import 'package:jusicool_design_system/src/ui/widgets/card/log_card.dart';
import 'package:jusicool_design_system/src/ui/widgets/card/month_stock_card.dart';
import 'package:jusicool_design_system/src/ui/widgets/card/news_card.dart';
import 'package:jusicool_design_system/src/ui/widgets/card/stock_card.dart';
import 'package:jusicool_design_system/src/ui/widgets/textfiled/buy_textfiled.dart';
import 'package:jusicool_design_system/src/ui/widgets/textfiled/comments.dart';
import 'package:jusicool_design_system/src/ui/widgets/textfiled/default_textfiled.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800), // Updated design size to 360x800
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Component Test App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColor.main),
            useMaterial3: true,
          ),
          home: const ComponentTestScreen(),
        );
      },
    );
  }
}

class ComponentTestScreen extends StatelessWidget {
  const ComponentTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        title: Text(
          'Component Test',
          style: TextStyle(fontSize: 20.sp), // Responsive font size
        ),
        backgroundColor: AppColor.main,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w), // Responsive padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BuyTextField Section
              Text('BuyTextField', style: AppTypography.subTitle),
              SizedBox(height: 8.h), // Responsive height
              BuyTextField(
                label: 'Amount',
                hintText: 'Enter amount',
                unit: 'USD',
                balanceText: '보유 원화 142,400,000원',
              ),
              SizedBox(height: 16.h),

              // CustomTextField Section
              Text('DefaultTextField', style: AppTypography.subTitle),
              SizedBox(height: 8.h),
              DefaultTextField(
                hintText: 'Enter your name',
                validator: (value) {
                  if (value == null || value.isEmpty) return '필수 입력 항목입니다.';
                  if (RegExp(r'\d').hasMatch(value)) return '숫자는 입력할 수 없습니다.';
                  return null;
                },
              ),
              SizedBox(height: 16.h),

              // NewsCard Section
              Text('News Card', style: AppTypography.subTitle),
              SizedBox(height: 8.h),
              NewsCard(
                title: '뉴스 제목이 들어갑니다',
                subtitle: '뉴스 부제목이 들어갑니다',
                imageUrl: 'https://picsum.photos/200',
              ),
              SizedBox(height: 16.h),

              // StockCard Section
              Text('Stock Card', style: AppTypography.subTitle),
              SizedBox(height: 8.h),
              StockCard(
                companyName: '삼성전자',
                logoUrl: 'https://picsum.photos/200',
                price: '67,800',
                priceChange: '+1.2%',
                share: '120주 ',
                isPositive: true,
              ),
              SizedBox(height: 16.h),

              // LogCard Section
              Text('Log Card', style: AppTypography.subTitle),
              SizedBox(height: 8.h),
              LogCard(
                title: '마이크로소프트',
                subtitle: '37,250원 구매완료',
                buyColor: AppColor.error,
              ),
              SizedBox(height: 16.h),

              // MonthStockCard Section
              Text('Month Stock Card', style: AppTypography.subTitle),
              SizedBox(height: 8.h),
              MonthStockCard(
                title: '애플',
                subtitle: '+111,181',
                imageUrl: 'https://picsum.photos/200',
                decimal: '(7.9)%',
              ),
              SizedBox(height: 16.h),

              // Buttons Section
              Text('Buttons', style: AppTypography.subTitle),
              SizedBox(height: 8.h),
              AppButtonMedium(
                text: 'Confirm',
                backgroundColor: AppColor.main,
                borderColor: AppColor.main,
                textColor: AppColor.black,
                onPressed: () {},
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButtonHalf(
                    text: 'Cancel',
                    onPressed: () {},
                    backgroundColor: AppColor.gray400,
                    textColor: AppColor.white,
                    borderColor: AppColor.gray400,
                  ),
                  AppButtonHalf(
                    text: 'OK',
                    backgroundColor: AppColor.main,
                    borderColor: AppColor.main,
                    textColor: AppColor.white,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // ToggleButton Section
              Text('Toggle Button', style: AppTypography.subTitle),
              SizedBox(height: 8.h),
              ToggleButton(),

              SizedBox(height: 16.h),

              CommentTextField(),

              SizedBox(height: 16.h),

              ButtonBuy(
                buttonText: '예시 텍스트',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
