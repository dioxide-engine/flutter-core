import 'dart:ui';

import 'package:methylene/theme.dart';
import 'package:methylene/theme/standard.dart';

final class ThematicColors {
  final ThematicColorsLogo logo;
  final ThematicColorsIcons icons;
  final double colorSaturation;
  final double colorHue;
  final Color background;
  final Color accent;
  final Color exciplit;
  final Color elementSelected;
  final Color elementUnselected;
  final Color text;
  final Color textGrayed;
  final ThematicColorsPalette palette;

  ThematicColors({
    required this.logo,
    required this.icons,
    required this.colorSaturation,
    required this.colorHue,
    required this.background,
    required this.accent,
    required this.exciplit,
    required this.elementSelected,
    required this.elementUnselected,
    required this.text,
    required this.textGrayed,
    required this.palette
  });
  static ThematicColors fromJson(Map<String, dynamic>? json) {
    return ThematicColors(
        logo: nonNullExtraction<ThematicColorsLogo>(ThematicColorsLogo.fromJson(json?['logo']), theme.colors.logo),
        icons: nonNullExtraction<ThematicColorsIcons>(ThematicColorsIcons.fromJson(json?['icons']), theme.colors.icons),
        colorSaturation: nonNullExtraction<double>(json?['color_saturation'], theme.colors.colorSaturation),
        colorHue: nonNullExtraction<double>(json?['color_hue'], theme.colors.colorHue),
        background: parseColor(json?['background'], theme.colors.background),
        accent: parseColor(json?['accent'], theme.colors.accent),
        exciplit: parseColor(json?['exciplit'], theme.colors.exciplit),
        elementSelected: parseColor(json?['element_selected'], theme.colors.elementSelected),
        elementUnselected: parseColor(json?['element_unselected'], theme.colors.elementUnselected),
        text: parseColor(json?['text'], theme.colors.text),
        textGrayed: parseColor(json?['text_grayed'], theme.colors.textGrayed),
        palette: nonNullExtraction<ThematicColorsPalette>(ThematicColorsPalette.fromJson(json?['palette']), theme.colors.palette)
    );
  }
}
final class ThematicColorsLogo {
  final double hue;
  final double saturation;
  final bool invert;
  ThematicColorsLogo({
    required this.hue,
    required this.saturation,
    required this.invert
  });
  static ThematicColorsLogo fromJson(Map<String, dynamic>? json) {
    return ThematicColorsLogo(
      hue: nonNullExtraction<double>(json?['hue'], theme.colors.logo.hue),
      saturation: nonNullExtraction<double>(json?['saturation'], theme.colors.logo.saturation),
      invert: nonNullExtraction<bool>(json?['invert'], theme.colors.logo.invert),
    );
  }
}
final class ThematicColorsIcons {
  final double hue;
  final double saturation;
  final bool invert;
  ThematicColorsIcons({
    required this.hue,
    required this.saturation,
    required this.invert
  });
  static ThematicColorsIcons fromJson(Map<String, dynamic>? json) {
    return ThematicColorsIcons(
      hue: nonNullExtraction<double>(json?['hue'], theme.colors.icons.hue),
      saturation: nonNullExtraction<double>(json?['saturation'], theme.colors.icons.saturation),
      invert: nonNullExtraction<bool>(json?['invert'], theme.colors.icons.invert),
    );
  }
}
final class ThematicColorsPalette {
  final Color white;
  final Color lightGray;
  final Color gray;
  final Color darkGray;
  final Color dark;
  final Color black;
  final Color blue;
  final Color lightBlue;
  final Color darkBlue;
  final Color turquoise;
  final Color red;
  final Color lightRed;
  final Color darkRed;
  final Color accentRed;
  final Color orange;
  final Color accentOrange;
  final Color yellow;
  final Color dirtyYellow;
  final Color green;
  final Color lightGreen;
  final Color darkGreen;
  final Color pink;
  final Color magenta;
  final Color violet;

  ThematicColorsPalette({
    required this.white,
    required this.lightGray,
    required this.gray,
    required this.darkGray,
    required this.dark,
    required this.black,
    required this.blue,
    required this.lightBlue,
    required this.darkBlue,
    required this.turquoise,
    required this.red,
    required this.lightRed,
    required this.darkRed,
    required this.accentRed,
    required this.orange,
    required this.accentOrange,
    required this.yellow,
    required this.dirtyYellow,
    required this.green,
    required this.lightGreen,
    required this.darkGreen,
    required this.pink,
    required this.magenta,
    required this.violet
  });
  static ThematicColorsPalette fromJson(Map<String, dynamic>? json) {
    return ThematicColorsPalette(
        white: parseColor(json?['white'], theme.colors.palette.white),
        lightGray: parseColor(json?['light_gray'], theme.colors.palette.lightGray),
        gray: parseColor(json?['gray'], theme.colors.palette.gray),
        darkGray: parseColor(json?['dark_gray'], theme.colors.palette.darkGray),
        dark: parseColor(json?['dark'], theme.colors.palette.dark),
        black: parseColor(json?['black'], theme.colors.palette.black),
        blue: parseColor(json?['blue'], theme.colors.palette.blue),
        lightBlue: parseColor(json?['light_blue'], theme.colors.palette.lightBlue),
        darkBlue: parseColor(json?['dark_blue'], theme.colors.palette.darkBlue),
        turquoise: parseColor(json?['turquoise'], theme.colors.palette.turquoise),
        red: parseColor(json?['red'], theme.colors.palette.red),
        lightRed: parseColor(json?['light_red'], theme.colors.palette.lightRed),
        darkRed: parseColor(json?['dark_red'], theme.colors.palette.darkRed),
        accentRed: parseColor(json?['accent_red'], theme.colors.palette.accentRed),
        orange: parseColor(json?['orange'], theme.colors.palette.orange),
        accentOrange: parseColor(json?['accent_orange'], theme.colors.palette.accentOrange),
        yellow: parseColor(json?['yellow'], theme.colors.palette.yellow),
        dirtyYellow: parseColor(json?['dirty_yellow'], theme.colors.palette.dirtyYellow),
        green: parseColor(json?['green'], theme.colors.palette.green),
        lightGreen: parseColor(json?['light_green'], theme.colors.palette.lightGreen),
        darkGreen: parseColor(json?['dark_green'], theme.colors.palette.darkGreen),
        pink: parseColor(json?['pink'], theme.colors.palette.pink),
        magenta: parseColor(json?['magenta'], theme.colors.palette.magenta),
        violet: parseColor(json?['violet'], theme.colors.palette.violet)
    );
  }
}
