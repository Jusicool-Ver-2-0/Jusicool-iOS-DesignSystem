import 'package:flutter/material.dart';
import '../../../core/theme/colors/color_palette.dart';

class DefaultTextfiled extends StatefulWidget {
  final String label;
  final String hintText;
  final String? Function(String?) validator;

  const DefaultTextfiled({
    super.key,
    required this.label,
    required this.hintText,
    required this.validator,
  });

  @override
  _DefaultTextfiledState createState() => _DefaultTextfiledState();
}

class _DefaultTextfiledState extends State<DefaultTextfiled> {
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

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      controller: _controller,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: Theme.of(context).textTheme.bodySmall,
        hintText: widget.hintText,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: hasNumber
                ? Colors.red
                : (_focusNode.hasFocus ? AppColor.main : AppColor.black),
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
      validator: widget.validator,
      onChanged: (value) {
        setState(() {
          hasNumber = RegExp(r'\d').hasMatch(value);
        });
      },
    );
  }
}
