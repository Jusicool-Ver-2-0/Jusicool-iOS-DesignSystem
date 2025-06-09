import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../jusicool_design_system.dart';


class BuyTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final String unit;
  final String balanceText;

  const BuyTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.unit,
    required this.balanceText,
  });

  @override
  State<BuyTextField> createState() => _BuyTextFieldState();
}

class _BuyTextFieldState extends State<BuyTextField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(height: 8.h), // ✅ 적용
        Container(
          width: 312.w, // ✅ 적용
          height: 54.h, // ✅ 적용
          padding: EdgeInsets.symmetric(horizontal: 16.w), // ✅ 적용
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r), // ✅ 적용
            border: Border.all(
              color: _focusNode.hasFocus ? JusicoolColor.main : JusicoolColor.black,
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  focusNode: _focusNode,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    border: InputBorder.none,
                  ),
                ),
              ),
              if (_isFocused)
                Text(
                  widget.unit,
                  style: JusicoolTypography.bodySmall.copyWith(
                    color: JusicoolColor.gray600,
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 8.h), // ✅ 적용
        SizedBox(
          width: 312.w, // ✅ 적용
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end, // 오른쪽 정렬
            children: [
              Text(
                widget.balanceText,
                style: JusicoolTypography.label.copyWith(
                  color: JusicoolColor.main,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
