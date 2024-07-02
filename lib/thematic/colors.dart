import 'dart:ui';

import 'package:methylene/thematic.dart';

final class ThematicColors {
  static const Color exciplit = Color(0xFF181818);
  static const Color background = Color(0xFF292B2D);
  static const Color elementUnselected = Color(0xFF9B9EA2);
  static const Color elementSelected = Color(0xFFFFFFFF);
  static const Color text = Color(0xFFFFFFFF);
  static const Color textGrayed = Color(0xFFB6B6B6);
  static const Color accent = Color(0xFFB47563);
}
final class ThematicColorsLogo {
  late final double hue;
  late final double saturation;
  late final bool invert;
  ThematicColorsLogo({
    double? hue,
    double? saturation,
    bool? invert
  }) {
    this.hue = getValueOrStandard(hue, standard);
    this.saturation = getValueOrStandard(saturation, standard);
    this.invert = getValueOrStandard(invert, standard);
  }
}
final class ThematicColorsIcons {

}
final class ThematicColorsPalette {

}

final class ThematicSyntax {

}