import 'package:flutter/material.dart';
import 'package:tes/src/core/theme/colors/color_palette.dart';
import 'package:tes/src/core/theme/texts/dimensions.dart';

class ButtonBuy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var buttonText = "예시 택스트";
    var borderColor = AppColor.error;
    var textColor = AppColor.error; 

    return InkWell(
      onTap: () {
        print('$buttonText 클릭!');
      },
      borderRadius: BorderRadius.circular(AppDimensions.buttonBorderRadius),
      child: Container(
        width: AppDimensions.buttonWidth,
        height: AppDimensions.buttonHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}