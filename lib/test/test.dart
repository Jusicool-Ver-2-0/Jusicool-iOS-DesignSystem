import 'package:flutter/material.dart';
import 'package:tes/src/core/theme/colors/color_palette.dart';
import 'package:tes/src/core/theme/texts/typography.dart';
import 'package:tes/src/ui/widgets/button/button_half.dart';
import 'package:tes/src/ui/widgets/button/button_medium.dart';
import 'package:tes/src/ui/widgets/button/toggle_button.dart';
import 'package:tes/src/ui/widgets/textfiled/buy_textfiled.dart';
import 'package:tes/src/ui/widgets/textfiled/default_textfiled.dart';
import 'package:tes/src/ui/widgets/card/news_card.dart';
import 'package:tes/src/ui/widgets/card/stock_card.dart';
import 'package:tes/src/ui/widgets/card/log_card.dart'; // LogCard import 추가
import 'package:tes/src/ui/widgets/card/month_stock_card.dart'; // MonthStockCard import 추가
import 'package:tes/src/ui/widgets/textfiled/comments.dart';
import 'package:tes/src/ui/widgets/button/button_buy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Component Test App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.main),
        useMaterial3: true,
      ),
      home: const ComponentTestScreen(),
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
        title: const Text('Component Test'),
        backgroundColor: AppColor.main,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BuyTextField Section
              Text('BuyTextField', style: AppTypography.subTitle),
              const SizedBox(height: 8),
              const BuyTextField(
                label: 'Amount',
                hintText: 'Enter amount',
                unit: 'USD',
                balanceText: '보유 원화 142,400,000원',
              ),
              const SizedBox(height: 16),

              // CustomTextField Section
              Text('CustomTextField', style: AppTypography.subTitle),
              const SizedBox(height: 8),
              const CustomTextField(
                label: 'Name',
                hintText: 'Enter your name',
              ),
              const SizedBox(height: 16),

              // NewsCard Section
              Text('News Card', style: AppTypography.subTitle),
              const SizedBox(height: 8),
              const NewsCard(
                title: '뉴스 제목이 들어갑니다',
                subtitle: '뉴스 부제목이 들어갑니다',
                imageUrl: 'https://picsum.photos/200',
              ),
              const SizedBox(height: 16),

              // StockCard Section
              Text('Stock Card', style: AppTypography.subTitle),
              const SizedBox(height: 8),
              const StockCard(
                companyName: '삼성전자',
                logoUrl: 'https://picsum.photos/200',
                price: '67,800',
                priceChange: '+1.2%',
                share: '120주 ',
                isPositive: true,
              ),
              const SizedBox(height: 16),

              // LogCard Section
              Text('Log Card', style: AppTypography.subTitle),
              const SizedBox(height: 8),
              LogCard(
                title: '마이크로소프트',
                subtitle: '37,250원 구매완료',
                buyColor: AppColor.error,
              ),
              const SizedBox(height: 16),

              // MonthStockCard Section (추가된 부분)
              Text('Month Stock Card', style: AppTypography.subTitle),
              const SizedBox(height: 8),
              const MonthStockCard(
                title: '애플',
                subtitle: '+111,181',
                imageUrl: 'https://picsum.photos/200',
                decimal: '(7.9)%',
              ),
              const SizedBox(height: 16),

              // Buttons Section
              Text('Buttons', style: AppTypography.subTitle),
              const SizedBox(height: 8),
              AppButtonMedium(
                text: 'Confirm',
                backgroundColor: AppColor.main,
                borderColor: AppColor.main,
                textColor: AppColor.black,
                onPressed: () {},
              ),
              const SizedBox(height: 8),
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
              const SizedBox(height: 16),

              // ToggleButton Section
              Text("toggle button", style: AppTypography.subTitle),
              const SizedBox(height: 8),
              const ToggleButton(),

              SizedBox(height: 16),

              CommentTextField(),
              
              SizedBox(height: 16),

              ButtonBuy(
                buttonText: "예시 텍스트",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
