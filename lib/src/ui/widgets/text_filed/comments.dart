import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../jusicool_design_system.dart';

class CommentTextField extends StatefulWidget {
  const CommentTextField({super.key});

  @override
  State<CommentTextField> createState() => _CommentTextFieldState();
}

class _CommentTextFieldState extends State<CommentTextField> {
  bool _hasText = false;
  final TextEditingController _controller = TextEditingController();

  void _submitText() {
    if (_hasText) {
      log(_controller.text);
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
            color: JusicoolColor.gray400,
            width: 1.w,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: JusicoolColor.gray400,
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: JusicoolColor.main,
            width: 1.w,
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: _submitText,
          child: JusicoolIcons.send(
            width: 36.w,
            height: 36.h,
            color: _hasText ? JusicoolColor.main : JusicoolColor.gray400,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      ),
    );
  }
}
