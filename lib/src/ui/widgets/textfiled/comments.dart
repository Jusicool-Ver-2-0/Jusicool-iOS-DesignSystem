import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jusicool_design_system/src/core/theme/colors/color_palette.dart';

class CommentTextField extends StatefulWidget {
  const CommentTextField({super.key});

  @override
  _CommentTextFieldState createState() => _CommentTextFieldState();
}

class _CommentTextFieldState extends State<CommentTextField> {
  bool _hasText = false;
  final TextEditingController _controller = TextEditingController();

  void _submitText() {
    if (_hasText) {
      print(_controller.text);
      _controller.clear();
      setState(() {
        _hasText = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: (text) {
        setState(() {
          _hasText = text.isNotEmpty;
        });
      },
      onSubmitted: (text) {
        _submitText();
      },
      decoration: InputDecoration(
        hintText: '댓글을 작성해보세요',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColor.gray400,
            width: 1.w,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColor.gray400,
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColor.main,
            width: 1.w,
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: _submitText,
          child: SvgPicture.asset(
            'assets/icons/send_button.svg',
            color: _hasText ? const Color(0xFF2756F1) : const Color(0xFFA5A6A9),
            width: 36.w,
            height: 36.h,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      ),
    );
  }
}
