import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jusicool_design_system/src/core/theme/colors/color_palette.dart';
import 'package:jusicool_design_system/src/core/theme/texts/typography.dart';

/// 디자인 시스템 공통 텍스트 필드
class DefaultTextField extends StatefulWidget {
  /// 입력 힌트 텍스트
  final String hintText;

  /// 유효성 검증 결과를 전달
  final bool isValid;

  /// 에러 메시지 (isValid가 false일 때 표시)
  final String? errorText;

  /// 텍스트 변경 콜백
  final void Function(String)? onChanged;

  /// 컨트롤러를 외부에서 주입할 때 사용
  final TextEditingController? controller;

  /// 비밀번호 등 입력 가림 처리
  final bool obscureText;

  /// 필드 높이
  final double height;

  const DefaultTextField({
    super.key,
    required this.hintText,
    this.isValid = true,
    this.errorText,
    this.onChanged,
    this.controller,
    this.obscureText = false,
    this.height = 58.0,
  });

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  late final FocusNode _focusNode;
  late final TextEditingController _controller;
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode()..addListener(() => setState(() {}));
    _controller = widget.controller ?? TextEditingController();
    _obscure = widget.obscureText;
  }

  @override
  void didUpdateWidget(DefaultTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.obscureText != widget.obscureText) {
      _obscure = widget.obscureText;
    }
    if (oldWidget.controller != widget.controller) {
      if (widget.controller != null) {
        _controller = widget.controller!;
      }
    }
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
    final hasError = !widget.isValid && widget.errorText != null;

    final defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(
        color: hasError ? AppColor.error : AppColor.gray300,
        width: 1.w,
      ),
    );

    final focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(
        color: hasError ? AppColor.error : AppColor.main,
        width: 2.w,
      ),
    );

    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: widget.height.h),
      child: TextFormField(
        focusNode: _focusNode,
        controller: _controller,
        obscureText: widget.obscureText && _obscure,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.white,
          hintText: widget.hintText,
          hintStyle: AppTypography.bodySmall.copyWith(
            fontSize: 16.sp,
            color: AppColor.gray300,
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          border: defaultBorder,
          enabledBorder: defaultBorder,
          focusedBorder: focusedBorder,
          errorBorder: defaultBorder,
          focusedErrorBorder: focusedBorder,
          errorText: hasError ? widget.errorText : null,
          errorStyle: AppTypography.bodySmall.copyWith(
            fontSize: 12.sp,
            color: AppColor.error,
          ),
          labelText: widget.hintText, // 접근성 개선
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _obscure ? Icons.visibility : Icons.visibility_off,
                    size: 24.sp,
                    color:
                        _focusNode.hasFocus ? AppColor.main : AppColor.gray300,
                  ),
                  onPressed: () => setState(() => _obscure = !_obscure),
                )
              : null,
        ),
      ),
    );
  }
}
