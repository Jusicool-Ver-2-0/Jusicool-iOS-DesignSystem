import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class JusicoolIcon {
  JusicoolIcon._();

  static Widget _buildIcon(
    String fileName, {
    Color? color,
    required double width,
    required double height,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        'packages/jusicool_design_system/assets/icons/$fileName',
        colorFilter:
            color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
        width: width,
        height: height,
      ),
    );
  }

  static Widget account({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('account.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget chart({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('chart.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget news({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('news.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget pieChart({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('pie_chart.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget backArrow({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('back_arrow.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget forwardArrow({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('forward_arrow.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget heart({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('heart.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget pencilLine({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('pencil_line.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget search({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('search.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget searchSchool({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('search_school.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget send({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('send_button.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget setting({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('setting.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget speechBubble({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('speech_bubble.svg',
          color: color, width: width, height: height, onTap: onTap);

  static Widget x({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildIcon('X.svg',
          color: color, width: width, height: height, onTap: onTap);
}
