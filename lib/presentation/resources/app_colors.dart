import 'package:flutter/material.dart';

class AppColors {
  const AppColors({
    required this.primaryMain,
    required this.primaryText,
    required this.primaryTextOnContrast,
    required this.primaryBackground,
    required this.secondaryMain,
    required this.secondaryText,
    required this.secondaryBackgroundPrimary,
    required this.secondaryBackgroundSecondary,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.surface,
    required this.action,
    required this.border,
    required this.backgroundContrast,
    required this.textPrimary,
    required this.textSecondary,
    required this.textContrastOnDark,
    required this.textContrastOnLight,
    required this.textContrastOnContrastBackground,
    required this.iconPrimary,
    required this.iconSecondary,
    required this.backdropPrimary,
    required this.backdropSecondary,
    required this.backgroundTransparent,
  });

  /// Used for buttons colors, filled tags etc.
  final Color primaryMain;

  /// Used for text, links, icons and smaller details that require a higher contrast.
  final Color primaryText;

  /// Used for text, links, icons and smaller details that require a higher contrast over a contrast background.
  final Color primaryTextOnContrast;

  /// Used as a background color for secondary buttons, tag, banners, tooltip etc.
  final Color primaryBackground;

  /// Used for tags and other accent elements.
  final Color secondaryMain;

  /// Used for text, icons and smaller details that require a higher contrast.
  final Color secondaryText;

  /// Used as a background color for banners, tooltip etc.
  final Color secondaryBackgroundPrimary;

  /// Used as a background color for banners, tooltip etc. .
  final Color secondaryBackgroundSecondary;

  /// Used as main background color
  final Color backgroundPrimary;

  /// Used as a secondary background between sections of content.
  final Color backgroundSecondary;

  /// Used as background for cards and sheets
  final Color surface;

  /// Used as a fill color for tags, input etc.
  final Color action;

  /// Used for dividers and borders
  final Color border;

  /// Used for snackbars and other elements that need to contrast the default background
  final Color backgroundContrast;

  /// Used for primary text
  final Color textPrimary;

  /// Used for secondary text
  final Color textSecondary;

  /// Used as a contrasting text over dark fill colors
  final Color textContrastOnDark;

  /// Used as a contrasting text over light fill colors
  final Color textContrastOnLight;

  /// Text over contrast background
  final Color textContrastOnContrastBackground;

  /// Used for icon buttons etc.
  final Color iconPrimary;

  /// Used for decorative icons
  final Color iconSecondary;

  /// Used to dim the background of modals/alerts as well as for a transparent background
  final Color backdropPrimary;

  /// Used to dim the background of modals/alerts as well as for a transparent background
  final Color backdropSecondary;

  /// Used for a transparent background of login form (input)
  final Color backgroundTransparent;
}

const colorsLight = AppColors(
  /// Primary
  primaryMain: LightColors.primaryMain,
  primaryText: LightColors.primaryText,
  primaryTextOnContrast: LightColors.primaryTextOnContrast,
  primaryBackground: LightColors.primaryBackground,

  /// Secondary
  secondaryMain: LightColors.secondaryMain,
  secondaryText: LightColors.secondaryText,
  secondaryBackgroundPrimary: LightColors.secondaryBackgroundPrimary,
  secondaryBackgroundSecondary: LightColors.secondaryBackgroundSecondary,

  /// Backgrounds
  backgroundPrimary: LightColors.backgroundPrimary,
  backgroundSecondary: LightColors.backgroundSecondary,
  backgroundContrast: LightColors.backgroundContrast,
  backgroundTransparent: LightColors.backgroundTransparent,

  /// Backdrops
  backdropPrimary: LightColors.backdropPrimary,
  backdropSecondary: LightColors.backdropSecondary,

  /// Components
  surface: LightColors.surface,
  action: LightColors.action,
  border: LightColors.border,

  /// Text
  textPrimary: LightColors.textPrimary,
  textSecondary: LightColors.textSecondary,
  textContrastOnDark: LightColors.textContrastOnDark,
  textContrastOnLight: LightColors.textContrastOnLight,
  textContrastOnContrastBackground:
      LightColors.textContrastOnContrastBackground,

  /// Icons
  iconPrimary: LightColors.iconPrimary,
  iconSecondary: LightColors.iconSecondary,
);

class LightColors {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  LightColors._();

  /// Primary
  static const primaryMain = Color(0xFF9428E8);
  static const primaryText = Color(0xFF5B089C);
  static const primaryTextOnContrast = Color(0xFFBF84ED);
  static const primaryBackground = Color(0xFFF6EBFF);

  /// Secondary
  static const secondaryMain = Color(0xFF26ACD7);
  static const secondaryText = Color(0xFF076F90);
  static const secondaryBackgroundPrimary = Color(0xFFD8F2FA);
  static const secondaryBackgroundSecondary = Color(0xFF076F91);

  /// Backgrounds
  static const backgroundPrimary = Color(0xFFFFFFFF);
  static const backgroundSecondary = Color(0xFFF6F6F6);
  static const backgroundContrast = Color(0xFF1B2124);
  static const backgroundTransparent = Color(0x66EDEDF2);

  /// Backdrops
  static const backdropPrimary = Color(0x80000000);
  static const backdropSecondary = Color(0xB3FFFFFF);

  /// Components
  static const surface = Color(0xFFFFFFFF);
  static const action = Color(0xFFEDEDF2);
  static const border = Color(0xB3C2C4CA);

  /// Text
  static const textPrimary = Color(0xFF1B2124);
  static const textSecondary = Color(0xFF797989);
  static const textContrastOnDark = Color(0xFFFFFFFF);
  static const textContrastOnLight = Color(0xFF1B2124);
  static const textContrastOnContrastBackground = Color(0xFFFFFFFF);

  /// Icons
  static const iconPrimary = Color(0xFF3F4252);
  static const iconSecondary = Color(0xFFAEB0B8);
}

extension AppColorsExtension on BuildContext {
  AppColors get colors {
    return colorsLight;
  }
}
