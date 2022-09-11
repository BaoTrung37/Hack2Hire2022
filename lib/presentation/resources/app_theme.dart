import 'package:example_hack2hire/presentation/resources/resources.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  const colors = colorsLight;

  return ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: colors.backgroundPrimary,
      foregroundColor: colors.textPrimary,
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: colors.backgroundPrimary,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
  );
}
