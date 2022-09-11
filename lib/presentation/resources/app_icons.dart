import 'package:example_hack2hire/presentation/widget/svg_icon.dart';
import 'package:flutter/material.dart';

class AppIcons {
  AppIcons._private();

  static const _iconsPath = 'assets/icons';

  static Widget back({
    Color? color,
    double? size,
  }) {
    return SvgIcon.from(
      '$_iconsPath/Back.svg',
      color: color,
      size: size,
    );
  }
}
