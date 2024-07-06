import 'package:flutter/material.dart';
import 'package:methylene/theme.dart';
abstract final class ThematicMisc {
  static final ThematicGeneralFactorLevel factorLevel = ThematicGeneralFactorLevel(
      highest: 1.6,
      high: 1.4,
      over: 1.2,
      moderate: 1.0,
      under: 0.8,
      low: 0.6,
      lowest: 0.4
  );
  static final Thematic standardTheme = Thematic(
      general: ThematicGeneral(
          symbolScaleFactor: 1,
          interfaceScaleFactor: 1,
          text: ThematicGeneralText(
              font: 'Varela Round',
              fontScaleFactor: 1,
              fontScaleFactorLevel: factorLevel
          ),
          geometry: ThematicGeneralGeometry(
              insets: ThematicGeneralGeometryInsets(
                  factor: 1,
                  factorLevel: factorLevel
              ),
              rounding: ThematicGeneralGeometryRounding(
                  factor: 1,
                  factorLevel: factorLevel
              )
          )
      ),
      colors: ThematicColors(
          logo: ThematicColorsLogo(
              hue: 0,
              saturation: 100,
              invert: false
          ),
          icons: ThematicColorsIcons(
              hue: 0,
              saturation: 100,
              invert: false
          ),
          colorSaturation: 100,
          colorHue: 0,
          background: Color(0xFF292B2D),
          accent: Color(0xFFB47563),
          explicit: Color(0xFF181818),
          elementSelected: Color(0xFFFFFFFF),
          elementUnselected: Color(0xFF9B9EA2),
          text: Color(0xFFFFFFFF),
          textGrayed: Color(0xFFB6B6B6),
          palette: ThematicColorsPalette(
              white: Color(0xFFFFFFFF),
              lightGray: Color(0xFFA1A1A1),
              gray: Color(0xFF7A7A7A),
              darkGray: Color(0xFF444444),
              dark: Color(0xFF232323),
              black: Color(0xFF050505),
              blue: Color(0xFF586D94),
              lightBlue: Color(0xFF63A9C2),
              darkBlue: Color(0xFF2D3C57),
              turquoise: Color(0xFF568D80),
              red: Color(0xFF963737),
              lightRed: Color(0xFFA85151),
              darkRed: Color(0xFF5D2929),
              accentRed: Color(0xFFCB493D),
              orange: Color(0xFFBE6E50),
              accentOrange: Color(0xFFC9985B),
              yellow: Color(0xFFE3D15B),
              dirtyYellow: Color(0xFF9B954F),
              green: Color(0xFF72934E),
              lightGreen: Color(0xFF98C46C),
              darkGreen: Color(0xFF335624),
              pink: Color(0xFFD54ADA),
              magenta: Color(0xFFB4456B),
              violet: Color(0xFF8E43B7)
          )
      ),
      syntax: ThematicSyntax()
  );

}

///
/// Uses a nullable and a not nullable object
/// and falls back to the not nullable object if the
/// nullable is null.
///
Type impose<Type>(Type? nullable, Type fallback) {
  return nullable != null ? nullable : fallback;
}


Color? parseColor(String value) {
  return Color(int.parse(value, radix: 16));
}