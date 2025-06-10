import 'dart:ui';

import 'package:flutter/cupertino.dart';

class JusicoolImage {
  JusicoolImage._();

  static Widget _buildImage(
    String fileName, {
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        'packages/jusicool_design_system/assets/images/$fileName',
        color: color,
        width: width,
        height: height,
      ),
    );
  }

  static Widget card({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildImage('card.png',
          color: color, width: width, height: height, onTap: onTap);

  static Widget checkCoin({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildImage('check_coin.png',
          color: color, width: width, height: height, onTap: onTap);

  static Widget cloud({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildImage('cloud.png',
          color: color, width: width, height: height, onTap: onTap);

  static Widget graphic({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildImage('graphic.png',
          color: color, width: width, height: height, onTap: onTap);

  static Widget logo({
    Color? color,
    double width = 24,
    double height = 24,
    VoidCallback? onTap,
  }) =>
      _buildImage('JUSICOOL_LOGO.png',
          color: color, width: width, height: height, onTap: onTap);
}
