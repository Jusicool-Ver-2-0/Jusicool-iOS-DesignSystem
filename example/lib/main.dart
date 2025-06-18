import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jusicool_design_system/jusicool_design_system.dart';

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
            colorScheme: ColorScheme.fromSeed(seedColor: JusicoolColor.main),
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
      backgroundColor: JusicoolColor.white,
      appBar: AppBar(
        title: Text(
          'Component Test',
          style: TextStyle(fontSize: 20.sp), // Responsive font size
        ),
        backgroundColor: JusicoolColor.main,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w), // Responsive padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BuyTextField Section
              Text('BuyTextField', style: JusicoolTypography.subTitle),
              SizedBox(height: 8.h), // Responsive height
              BuyTextField(
                label: 'Amount',
                hintText: 'Enter amount',
                unit: 'USD',
                balanceText: '보유 원화 142,400,000원',
              ),
              SizedBox(height: 16.h),

              // CustomTextField Section
              Text('DefaultTextField', style: JusicoolTypography.subTitle),
              SizedBox(height: 8.h),

              SizedBox(height: 16.h),

              // NewsCard Section
              Text('News Card', style: JusicoolTypography.subTitle),
              SizedBox(height: 8.h),
              NewsCard(
                title: '뉴스 제목이 들어갑니다',
                subtitle: '뉴스 부제목이 들어갑니다',
                imageUrl: 'https://picsum.photos/200',
              ),
              SizedBox(height: 16.h),

              // StockCard Section
              Text('Stock Card', style: JusicoolTypography.subTitle),
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
              Text('Log Card', style: JusicoolTypography.subTitle),
              SizedBox(height: 8.h),
              LogCard(
                title: '마이크로소프트',
                subtitle: '37,250원 구매완료',
                buyColor: JusicoolColor.error,
              ),
              SizedBox(height: 16.h),

              // MonthStockCard Section
              Text('Month Stock Card', style: JusicoolTypography.subTitle),
              SizedBox(height: 8.h),
              MonthStockCard(
                title: '애플',
                subtitle: '+111,181',
                imageUrl: 'https://picsum.photos/200',
                decimal: '(7.9)%',
              ),
              SizedBox(height: 16.h),

              // Buttons Section
              Text('Buttons', style: JusicoolTypography.subTitle),
              SizedBox(height: 8.h),
              AppButtonMedium(
                text: 'Confirm',
                backgroundColor: JusicoolColor.main,
                borderColor: JusicoolColor.main,
                textColor: JusicoolColor.black,
                onPressed: () {},
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButtonHalf(
                    text: 'Cancel',
                    onPressed: () {},
                    backgroundColor: JusicoolColor.gray400,
                    textColor: JusicoolColor.white,
                    borderColor: JusicoolColor.gray400,
                  ),
                  AppButtonHalf(
                    text: 'OK',
                    backgroundColor: JusicoolColor.main,
                    borderColor: JusicoolColor.main,
                    textColor: JusicoolColor.white,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // ToggleButton Section
              Text('Toggle Button', style: JusicoolTypography.subTitle),
              SizedBox(height: 8.h),
              ToggleButton(onToggle: (bool value) {}),

              SizedBox(height: 16.h),

              CommentTextField(),

              SizedBox(height: 16.h),

              ButtonBuy(buttonText: '예시 텍스트'),
              SizedBox(height: 16.h),

              JusicoolImage.cloud(
                width: 100.w,
                height: 100.h,
              ),

              JusicoolIcon.chart(),
              JusicoolIcon.news(),
              JusicoolIcon.person(),
            ],
          ),
        ),
      ),
    );
  }
}
