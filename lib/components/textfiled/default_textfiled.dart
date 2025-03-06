import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hintText;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
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
          child: TextField(
            focusNode: _focusNode,
            decoration: InputDecoration(
              hintText: widget.hintText,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
