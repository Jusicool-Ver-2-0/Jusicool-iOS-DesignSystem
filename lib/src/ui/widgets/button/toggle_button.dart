import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ 추가
import 'package:jusicool_design_system/src/core/theme/colors/color_palette.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isToggled = !isToggled;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: 43.w, // ✅ 적용
        height: 24.h, // ✅ 적용
        decoration: BoxDecoration(
          color: isToggled ? AppColor.main : AppColor.gray200,
          borderRadius: BorderRadius.circular(20.r), // ✅ 적용
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              right: isToggled ? 5.w : 20.w, // ✅ 적용
              child: Container(
                width: 18.w, // ✅ 적용
                height: 18.h, // ✅ 적용
                decoration: BoxDecoration(
                  color: AppColor.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
