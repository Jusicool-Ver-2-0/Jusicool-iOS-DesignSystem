import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/colors/color_palette.dart';

class DefaultTextField extends StatefulWidget {
  final String hintText;
  final String? Function(String?) validator;
  final bool obscureText;
  final TextEditingController? controller;
  final String? errorText;
  final void Function(String)? onChanged; // ✅ 추가됨

  const DefaultTextField({
    super.key,
    required this.hintText,
    required this.validator,
    this.obscureText = false,
    this.controller,
    this.errorText,
    this.onChanged, // ✅ 추가됨
  });

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  late final FocusNode _focusNode;
  late final TextEditingController _controller;
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode()..addListener(() => setState(() {}));
    _controller = widget.controller ?? TextEditingController();
    _isObscure = widget.obscureText;
  }

  @override
  void dispose() {
    _focusNode.dispose();
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasError = widget.errorText != null;

    return TextFormField(
      focusNode: _focusNode,
      controller: _controller,
      obscureText: widget.obscureText && _isObscure,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: widget.onChanged,
      // ✅ 여기서 연결
      decoration: InputDecoration(
        hintText: widget.hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: hasError ? Colors.red : JusicoolColor.main,
            width: 2.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.red, width: 1.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.red, width: 2.w),
        ),
        errorText: widget.errorText,
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                  size: 24.sp,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              )
            : null,
      ),
    );
  }
}
