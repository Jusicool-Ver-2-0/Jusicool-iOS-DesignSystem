import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../theme/typography.dart';

class BuyTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final String unit;

  const BuyTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.unit,
  });

  @override
  _BuyTextFieldState createState() => _BuyTextFieldState();
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.label,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          width: 312,
          height: 54,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: _focusNode.hasFocus ? AppColor.main : AppColor.black,
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
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColor.gray600,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
