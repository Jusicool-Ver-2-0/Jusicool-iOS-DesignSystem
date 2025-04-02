import 'package:flutter/material.dart';
import '../../../core/theme/colors/color_palette.dart';

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
  final TextEditingController _controller = TextEditingController();
  bool hasNumber = false;

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
    _controller.dispose();
    super.dispose();
  }

  String? _validateInput(String? value) {
    if (value == null || value.isEmpty) {
      return '필수 입력 항목입니다.';
    }
    if (RegExp(r'\d').hasMatch(value)) {
      return '숫자는 입력할 수 없습니다.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      controller: _controller,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: Theme.of(context).textTheme.bodySmall,
        hintText: widget.hintText,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: hasNumber ? Colors.red : (_focusNode.hasFocus ? AppColor.main : AppColor.black),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: hasNumber ? Colors.red : AppColor.main,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
      ),
      validator: _validateInput,
      onChanged: (value) {
        setState(() {
          hasNumber = RegExp(r'\d').hasMatch(value);
        });
      },
    );
  }
}
