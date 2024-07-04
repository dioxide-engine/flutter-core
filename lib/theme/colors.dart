import 'dart:ui';

import 'package:methylene/theme.dart';

final class ThematicColors {
  final ThematicColorsLogo logo;
  static const Color exciplit = Color(0xFF181818);
  static const Color background = Color(0xFF292B2D);
  static const Color elementUnselected = Color(0xFF9B9EA2);
  static const Color elementSelected = Color(0xFFFFFFFF);
  static const Color text = Color(0xFFFFFFFF);
  static const Color textGrayed = Color(0xFFB6B6B6);
  static const Color accent = Color(0xFFB47563);
}
final class ThematicColorsLogo {
  final double hue;
  final double saturation;
  final bool invert;
  ThematicColorsLogo._internal({
    required this.hue,
    required this.saturation,
    required this.invert
  });
  static Future<ThematicColorsLogo> fromJson(Map<String, dynamic>? json) async {
    Thematic defaultTheme = await getDefaultTheme;
    return ThematicColorsLogo._internal(
      hue: getValueOrStandard<double>(json?['hue'], defaultTheme.colors.logo.hue),
      saturation: getValueOrStandard<double>(json?['saturation'], defaultTheme.colors.logo.saturation),
      invert: getValueOrStandard<bool>(json?['invert'], defaultTheme.colors.logo.invert),
    );
  }
  static Future<ThematicColorsLogo> fromVariables({
    double? hue,
    double? saturation,
    bool? invert
  }) async {
    Thematic defaultTheme = await getDefaultTheme;
    return ThematicColorsLogo._internal(
        hue: getValueOrStandard<double>(hue, defaultTheme.colors.logo.hue),
        saturation: getValueOrStandard<double>(saturation, defaultTheme.colors.logo.saturation),
        invert: getValueOrStandard<bool>(invert, defaultTheme.colors.logo.invert),
    );
  }
}
final class ThematicColorsIcons {

}
final class ThematicColorsPalette {

}

final class ThematicSyntax {

}