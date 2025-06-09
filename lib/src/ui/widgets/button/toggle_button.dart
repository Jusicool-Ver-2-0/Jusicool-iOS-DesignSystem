import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../jusicool_design_system.dart'; // ✅ 추가

class ToggleButton extends StatefulWidget {
  const ToggleButton({
    super.key,
    this.isToggled = false,
    required this.onToggle,
  });

  final bool isToggled;
  final ValueChanged<bool> onToggle;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  late bool _isToggled;

  @override
  void initState() {
    super.initState();
    _isToggled = widget.isToggled;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isToggled = !_isToggled;
        });
        widget.onToggle(_isToggled);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: 43.w,
        height: 24.h,
        decoration: BoxDecoration(
          color: _isToggled ? JusicoolColor.main : JusicoolColor.gray200,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              right: _isToggled ? 5.w : 20.w,
              child: Container(
                width: 18.w,
                height: 18.h,
                decoration: const BoxDecoration(
                  color: JusicoolColor.white,
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
