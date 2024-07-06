import 'package:flutter/cupertino.dart';
import 'package:methylene/theme.dart';
import 'package:methylene/theme/standard.dart';

@immutable
final class ThematicColors extends ThematicValue<ThematicColors>  {
  final ThematicColorsLogo logo = ThematicColorsLogo();
  final ThematicColorsIcons icons = ThematicColorsIcons();
  final ThematicValue<double> colorSaturation = ThematicValue('color_saturation', theme.colors.colorSaturation.value);
  final ThematicValue<double> colorHue = ThematicValue('color_hue', theme.colors.colorHue.value);
  final ThematicValue<Color> background = ThematicValue('background', theme.colors.background.value);
  final ThematicValue<Color> accent = ThematicValue('accent', theme.colors.accent.value);
  final ThematicValue<Color> explicit = ThematicValue('explicit', theme.colors.explicit.value);
  final ThematicValue<Color> elementSelected = ThematicValue('elementSelected', theme.colors.elementSelected.value);
  final ThematicValue<Color> elementUnselected = ThematicValue('elementUnselected', theme.colors.elementUnselected.value);
  final ThematicValue<Color> text = ThematicValue('text', theme.colors.text.value);
  final ThematicValue<Color> textGrayed = ThematicValue('textGrayed', theme.colors.textGrayed.value);
  final ThematicColorsPalette palette = ThematicColorsPalette();

  ThematicColors({
    ThematicColorsLogo? logo,
    ThematicColorsIcons? icons,
    double? colorSaturation,
    double? colorHue,
    Color? background,
    Color? accent,
    Color? explicit,
    Color? elementSelected,
    Color? elementUnselected,
    Color? text,
    Color? textGrayed,
    ThematicColorsPalette? palette
  }) : super('colors', theme.colors) {
    this
      ..logo.imposeValue(logo)
      ..icons.imposeValue(icons)
      ..colorSaturation.imposeValue(colorSaturation)
      ..colorHue.imposeValue(colorHue)
      ..background.imposeValue(background)
      ..accent.imposeValue(accent)
      ..explicit.imposeValue(explicit)
      ..elementSelected.imposeValue(elementSelected)
      ..elementUnselected.imposeValue(elementUnselected)
      ..text.imposeValue(text)
      ..textGrayed.imposeValue(textGrayed)
      ..palette.imposeValue(palette);
    setValue(this);
  }
  factory ThematicColors.fromJson(Map<String, dynamic>? json) {
    ThematicColors thematicColors = ThematicColors();
    thematicColors
      ..logo.imposeValue(ThematicColorsLogo.fromJson(json?[thematicColors.logo.key]))
      ..icons.imposeValue(ThematicColorsIcons.fromJson(json?[thematicColors.icons.key]))
      ..colorSaturation.imposeValue(json?[thematicColors.colorSaturation.key])
      ..colorHue.imposeValue(json?[thematicColors.colorHue.key])
      ..background.imposeValue(parseColor(json?[thematicColors.background.key]))
      ..accent.imposeValue(parseColor(json?[thematicColors.accent.key]))
      ..explicit.imposeValue(parseColor(json?[thematicColors.explicit.key]))
      ..elementSelected.imposeValue(parseColor(json?[thematicColors.elementSelected.key]))
      ..elementUnselected.imposeValue(parseColor(json?[thematicColors.elementUnselected.key]))
      ..text.imposeValue(parseColor(json?[thematicColors.text.key]))
      ..textGrayed.imposeValue(parseColor(json?[thematicColors.textGrayed.key]))
      ..palette.imposeValue(ThematicColorsPalette.fromJson(json?[thematicColors.palette.key]));
    thematicColors.setValue(thematicColors);
    return thematicColors;
  }

  Map<String, dynamic> toJson() {
    setValue(this);
    return Map.fromEntries([
      logo.toEntry(),
      icons.toEntry(),
      colorSaturation.toEntry(),
      colorHue.toEntry(),
      background.toEntry(),
      accent.toEntry(),
      explicit.toEntry(),
      elementSelected.toEntry(),
      elementUnselected.toEntry(),
      text.toEntry(),
      textGrayed.toEntry(),
      palette.toEntry()
    ]);
  }
}

final class ThematicColorsLogo extends ThematicValue<ThematicColorsLogo> {
  final ThematicValue<double> hue = ThematicValue('hue', theme.colors.logo.hue.value);
  final ThematicValue<double> saturation = ThematicValue('saturation', theme.colors.logo.saturation.value);
  final ThematicValue<bool> invert = ThematicValue('invert', theme.colors.logo.invert.value);
  ThematicColorsLogo({
    double? hue,
    double? saturation,
    bool? invert
  }) : super('logo', theme.colors.logo) {
    this
      ..hue.imposeValue(hue)
      ..saturation.imposeValue(saturation)
      ..invert.imposeValue(invert);
    setValue(this);
  }
  factory ThematicColorsLogo.fromJson(Map<String, dynamic>? json) {
    ThematicColorsLogo thematicColorsLogo = ThematicColorsLogo();
    thematicColorsLogo
      ..hue.imposeValue(json?[thematicColorsLogo.saturation.key])
      ..saturation.imposeValue(json?[thematicColorsLogo.saturation.key])
      ..invert.imposeValue(json?[thematicColorsLogo.invert.key]);
    thematicColorsLogo.setValue(thematicColorsLogo);
    return thematicColorsLogo;
  }
  Map<String, dynamic> toJson() {
    setValue(this);
    return Map.fromEntries([
      hue.toEntry(),
      saturation.toEntry(),
      invert.toEntry()
    ]);
  }
}
final class ThematicColorsIcons extends ThematicValue<ThematicColorsIcons> {
  final ThematicValue<double> hue = ThematicValue('hue', theme.colors.icons.hue.value);
  final ThematicValue<double> saturation = ThematicValue('saturation', theme.colors.icons.saturation.value);
  final ThematicValue<bool> invert = ThematicValue('invert', theme.colors.icons.invert.value);
  ThematicColorsIcons({
    double? hue,
    double? saturation,
    bool? invert
  }) : super('icons', theme.colors.icons) {
    this
      ..hue.imposeValue(hue)
      ..saturation.imposeValue(saturation)
      ..invert.imposeValue(invert);
    setValue(this);
  }
  factory ThematicColorsIcons.fromJson(Map<String, dynamic>? json) {
    ThematicColorsIcons thematicColorsIcons = ThematicColorsIcons();
    thematicColorsIcons
      ..hue.imposeValue(json?[thematicColorsIcons.saturation.key])
      ..saturation.imposeValue(json?[thematicColorsIcons.saturation.key])
      ..invert.imposeValue(json?[thematicColorsIcons.invert.key]);
    thematicColorsIcons.setValue(thematicColorsIcons);
    return thematicColorsIcons;
  }
  Map<String, dynamic> toJson() {
    setValue(this);
    return Map.fromEntries([
      hue.toEntry(),
      saturation.toEntry(),
      invert.toEntry()
    ]);
  }
}
class ThematicColorsPalette extends ThematicValue<ThematicColorsPalette> {
  final ThematicValue<Color> white = ThematicValue(
      'white', theme.colors.palette.white.value);
  final ThematicValue<Color> lightGray = ThematicValue(
      'lightGray', theme.colors.palette.lightGray.value);
  final ThematicValue<Color> gray = ThematicValue(
      'gray', theme.colors.palette.gray.value);
  final ThematicValue<Color> darkGray = ThematicValue(
      'darkGray', theme.colors.palette.darkGray.value);
  final ThematicValue<Color> dark = ThematicValue(
      'dark', theme.colors.palette.dark.value);
  final ThematicValue<Color> black = ThematicValue(
      'black', theme.colors.palette.black.value);
  final ThematicValue<Color> blue = ThematicValue(
      'blue', theme.colors.palette.blue.value);
  final ThematicValue<Color> lightBlue = ThematicValue(
      'lightBlue', theme.colors.palette.lightBlue.value);
  final ThematicValue<Color> darkBlue = ThematicValue(
      'darkBlue', theme.colors.palette.darkBlue.value);
  final ThematicValue<Color> turquoise = ThematicValue(
      'turquoise', theme.colors.palette.turquoise.value);
  final ThematicValue<Color> red = ThematicValue(
      'red', theme.colors.palette.red.value);
  final ThematicValue<Color> lightRed = ThematicValue(
      'lightRed', theme.colors.palette.lightRed.value);
  final ThematicValue<Color> darkRed = ThematicValue(
      'darkRed', theme.colors.palette.darkRed.value);
  final ThematicValue<Color> accentRed = ThematicValue(
      'accentRed', theme.colors.palette.accentRed.value);
  final ThematicValue<Color> orange = ThematicValue(
      'orange', theme.colors.palette.orange.value);
  final ThematicValue<Color> accentOrange = ThematicValue(
      'accentOrange', theme.colors.palette.accentOrange.value);
  final ThematicValue<Color> yellow = ThematicValue(
      'yellow', theme.colors.palette.yellow.value);
  final ThematicValue<Color> dirtyYellow = ThematicValue(
      'dirtyYellow', theme.colors.palette.dirtyYellow.value);
  final ThematicValue<Color> green = ThematicValue(
      'green', theme.colors.palette.green.value);
  final ThematicValue<Color> lightGreen = ThematicValue(
      'lightGreen', theme.colors.palette.lightGreen.value);
  final ThematicValue<Color> darkGreen = ThematicValue(
      'darkGreen', theme.colors.palette.darkGreen.value);
  final ThematicValue<Color> pink = ThematicValue(
      'pink', theme.colors.palette.pink.value);
  final ThematicValue<Color> magenta = ThematicValue(
      'magenta', theme.colors.palette.magenta.value);
  final ThematicValue<Color> violet = ThematicValue(
      'violet', theme.colors.palette.violet.value);

  ThematicColorsPalette({
    Color? white,
    Color? lightGray,
    Color? gray,
    Color? darkGray,
    Color? dark,
    Color? black,
    Color? blue,
    Color? lightBlue,
    Color? darkBlue,
    Color? turquoise,
    Color? red,
    Color? lightRed,
    Color? darkRed,
    Color? accentRed,
    Color? orange,
    Color? accentOrange,
    Color? yellow,
    Color? dirtyYellow,
    Color? green,
    Color? lightGreen,
    Color? darkGreen,
    Color? pink,
    Color? magenta,
    Color? violet,
  }) : super('palette', theme.colors.palette) {
    this
      ..white.imposeValue(white)
      ..lightGray.imposeValue(lightGray)
      ..gray.imposeValue(gray)
      ..darkGray.imposeValue(darkGray)
      ..dark.imposeValue(dark)
      ..black.imposeValue(black)
      ..blue.imposeValue(blue)
      ..lightBlue.imposeValue(lightBlue)
      ..darkBlue.imposeValue(darkBlue)
      ..turquoise.imposeValue(turquoise)
      ..red.imposeValue(red)
      ..lightRed.imposeValue(lightRed)
      ..darkRed.imposeValue(darkRed)
      ..accentRed.imposeValue(accentRed)
      ..orange.imposeValue(orange)
      ..accentOrange.imposeValue(accentOrange)
      ..yellow.imposeValue(yellow)
      ..dirtyYellow.imposeValue(dirtyYellow)
      ..green.imposeValue(green)
      ..lightGreen.imposeValue(lightGreen)
      ..darkGreen.imposeValue(darkGreen)
      ..pink.imposeValue(pink)
      ..magenta.imposeValue(magenta)
      ..violet.imposeValue(violet);
    setValue(this);
  }

  factory ThematicColorsPalette.fromJson(Map<String, dynamic>? json) {
    ThematicColorsPalette palette = ThematicColorsPalette();
    palette
      ..white.imposeValue(parseColor(json?[palette.white.key]))
      ..lightGray.imposeValue(parseColor(json?[palette.lightGray.key]))
      ..gray.imposeValue(parseColor(json?[palette.gray.key]))
      ..darkGray.imposeValue(parseColor(json?[palette.darkGray.key]))
      ..dark.imposeValue(parseColor(json?[palette.dark.key]))
      ..black.imposeValue(parseColor(json?[palette.black.key]))
      ..blue.imposeValue(parseColor(json?[palette.blue.key]))
      ..lightBlue.imposeValue(parseColor(json?[palette.lightBlue.key]))
      ..darkBlue.imposeValue(parseColor(json?[palette.darkBlue.key]))
      ..turquoise.imposeValue(parseColor(json?[palette.turquoise.key]))
      ..red.imposeValue(parseColor(json?[palette.red.key]))
      ..lightRed.imposeValue(parseColor(json?[palette.lightRed.key]))
      ..darkRed.imposeValue(parseColor(json?[palette.darkRed.key]))
      ..accentRed.imposeValue(parseColor(json?[palette.accentRed.key]))
      ..orange.imposeValue(parseColor(json?[palette.orange.key]))
      ..accentOrange.imposeValue(parseColor(json?[palette.accentOrange.key]))
      ..yellow.imposeValue(parseColor(json?[palette.yellow.key]))
      ..dirtyYellow.imposeValue(parseColor(json?[palette.dirtyYellow.key]))
      ..green.imposeValue(parseColor(json?[palette.green.key]))
      ..lightGreen.imposeValue(parseColor(json?[palette.lightGreen.key]))
      ..darkGreen.imposeValue(parseColor(json?[palette.darkGreen.key]))
      ..pink.imposeValue(parseColor(json?[palette.pink.key]))
      ..magenta.imposeValue(parseColor(json?[palette.magenta.key]))
      ..violet.imposeValue(parseColor(json?[palette.violet.key]));
    palette.setValue(palette);
    return palette;
  }

  Map<String, dynamic> toJson() {
    setValue(this);
    return Map.fromEntries([
      white.toEntry(),
      lightGray.toEntry(),
      gray.toEntry(),
      darkGray.toEntry(),
      dark.toEntry(),
      black.toEntry(),
      blue.toEntry(),
      lightBlue.toEntry(),
      darkBlue.toEntry(),
      turquoise.toEntry(),
      red.toEntry(),
      lightRed.toEntry(),
      darkRed.toEntry(),
      accentRed.toEntry(),
      orange.toEntry(),
      accentOrange.toEntry(),
      yellow.toEntry(),
      dirtyYellow.toEntry(),
      green.toEntry(),
      lightGreen.toEntry(),
      darkGreen.toEntry(),
      pink.toEntry(),
      magenta.toEntry(),
      violet.toEntry(),
    ]);
  }
}
