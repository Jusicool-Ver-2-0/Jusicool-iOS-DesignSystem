import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tes/src/core/theme/colors/color_palette.dart';
import 'package:tes/src/core/theme/texts/dimensions.dart';

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
    return Container(
      width: AppDimensions.buttonWidth,
      height: AppDimensions.buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimensions.buttonBorderRadius),
        border: Border.all(
          color: AppColor.gray400,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
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
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: _submitText, 
            child: SvgPicture.string(
              '''
              <svg width="36" height="36" fill="none" xmlns="http://www.w3.org/2000/svg">
                <circle cx="18" cy="18" r="14.5" stroke="${_hasText ? '#2756F1' : '#A5A6A9'}"/>
                <path fill="${_hasText ? '#2756F1' : '#A5A6A9'}" d="M24.002 25.494a1 1 0 0 0 .922-1.385L18.923 9.714c-.342-.82-1.504-.82-1.846 0l-6 14.395a1 1 0 0 0 .92 1.385l3.456.005a1 1 0 0 0 .994-.872l1.057-8.159c.075-.581.916-.581.992 0l1.058 8.16a1 1 0 0 0 .993.87l3.455-.004Z"/>
              </svg>
              ''',
              width: 36,
              height: 36,
            ),
          ),
        ],
      ),
    );
  }
}