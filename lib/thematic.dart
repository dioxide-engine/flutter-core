import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:methylene/thematic/colors.dart';
import 'package:methylene/thematic/general.dart';

final class Thematic {
  final ThematicGeneral general;
  final ThematicColors colors;
  final ThematicSyntax syntax;
  const Thematic._internal({
    required this.general,
    required this.colors,
    required this.syntax,
  });
  static Future<Thematic> blueprint() async {
    Map<String, dynamic> theme = jsonDecode(await rootBundle.loadString('assets/blueprint/theme/default_theme.json'));

  }
  static Thematic fromJson(String content) {
    Map<String, dynamic> theme = jsonDecode(content);
    Map<String, dynamic>? general = theme['general'];
    Map<String, dynamic>? text = general?['text'];
    Map<String, dynamic>? fontScaleFactorLevel = text?['font_scale_factor_level'];
    Map<String, dynamic>? geometry = general?['geometry'];
    Map<String, dynamic>? insets = geometry?['insets'];
    Map<String, dynamic>? rounding = geometry?['rounding'];
    return Thematic._internal(
      general: ThematicGeneral(
          symbolScaleFactor: general?['symbol_scale_factor'],
          interfaceScaleFactor: general?['interface_scale_factor'],
          text: ThematicGeneralText(
              font: text?['font'],
              fontScaleFactor: text?['font_scale_factor'],
              fontScaleFactorLevel: ThematicGeneralFactorLevel(
                  highest: fontScaleFactorLevel?['highest'],
                  high: fontScaleFactorLevel?['high'],
                  over: fontScaleFactorLevel?['over'],
                  moderate: fontScaleFactorLevel?['moderate'],
                  under: fontScaleFactorLevel?['under'],
                  low: fontScaleFactorLevel?['low:'],
                  lowest: fontScaleFactorLevel?['lowest'],
              )),
          geometry: ThematicGeneralGeometry(
            insets: ThematicGeneralGeometryInsets(
              factor: insets?['factor'],
              factorLevel: insets?['factor_level']
            ),
            rounding: ThematicGeneralGeometryRounding(
              factor: rounding?['factor'],
              factorLevel: rounding?['factor_level']
            )
          ),
      ),
        colors: ThematicColors(

        ),
        syntax: null
    );
  }
  TextStyle text({double? size, Color? color, bool? bold}) => GoogleFonts.getFont(
      general.text.font,
      fontSize: general.text.,
      color: color != null ? color : ThematicColors.text,
      fontWeight: bold != null && bold == true ? FontWeight.bold : FontWeight.normal
  );
}
Type getValueOrStandard<Type>(Type? value, Type standard) {
  return value != null ? value : standard;
}



abstract final class ThematicGeometry {
  static EdgeInsetsGeometry edgeInsets({
    InsetsLevel? level,
    InsetsLevel? levelVertical,
    InsetsLevel? levelHorizontal
  })
  => level != null
      ? EdgeInsets.all(level.value)
      : EdgeInsets.symmetric(
        vertical: levelVertical != null
            ? levelVertical.value
            : 0,
        horizontal: levelHorizontal != null
            ? levelHorizontal.value
            : 0
  );

  static BorderRadiusGeometry borderRadius({
    RoundedLevel? level,
    RoundedLevel? levelTopLeft,
    RoundedLevel? levelTopRight,
    RoundedLevel? levelBottomLeft,
    RoundedLevel? levelBottomRight,
  })
  => level != null
      ? BorderRadius.all(Radius.circular(level.value))
      : BorderRadius.only(
      topLeft: levelTopLeft != null
          ? Radius.circular(levelTopLeft.value)
          : Radius.circular(0),
      topRight: levelTopRight != null
          ? Radius.circular(levelTopRight.value)
          : Radius.circular(0),
      bottomLeft: levelBottomLeft != null
          ? Radius.circular(levelBottomLeft.value)
          : Radius.circular(0),
      bottomRight: levelBottomRight != null
          ? Radius.circular(levelBottomRight.value)
          : Radius.circular(0)
  );
}
