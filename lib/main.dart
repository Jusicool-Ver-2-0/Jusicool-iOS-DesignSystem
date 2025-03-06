import 'package:flutter/material.dart';
import 'package:tes/components/button/button_half.dart';
import 'package:tes/components/button/button_medium.dart';
import 'package:tes/components/textfiled/buy_textfiled.dart';
import 'package:tes/components/textfiled/default_textfiled.dart';
import '../../theme/colors.dart';
import '../../theme/typography.dart';

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
      appBar: AppBar(
        title: const Text('Component Test'),
        backgroundColor: AppColor.main,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('BuyTextField', style: AppTypography.subTitle),
            const SizedBox(height: 8),
            const BuyTextField(
              label: 'Amount',
              hintText: 'Enter amount',
              unit: 'USD',
            ),
            const SizedBox(height: 16),
            Text('CustomTextField', style: AppTypography.subTitle),
            const SizedBox(height: 8),
            const CustomTextField(
              label: 'Name',
              hintText: 'Enter your name',
            ),
            const SizedBox(height: 16),
            Text('Buttons', style: AppTypography.subTitle),
            const SizedBox(height: 8),
            AppButtonMedium(
              text: 'Confirm',
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
                ),
                AppButtonHalf(
                  text: 'OK',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
