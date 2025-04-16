import 'package:flutter/cupertino.dart';
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
        width: 43,
        height: 24,
        decoration: BoxDecoration(
          color: isToggled ? AppColor.main : AppColor.gray200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              right: isToggled ? 5 : 20,
              child: Container(
                width: 18,
                height: 18,
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
