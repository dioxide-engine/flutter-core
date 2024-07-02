
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
enum TextSize {
  headline(2.0),
  highest(1.6),
  high(1.4),
  over(1.2),
  moderate(1.0),
  under(0.8),
  low(0.6),
  lowest(0.4);

  const TextSize(this.factor);
  final double factor;
}


enum InsetsLevel {
  highest(3.3),
  high(2.8),
  over(2.5),
  moderate(2.0),
  under(1.9),
  low(1.7),
  lowest(1.5);

  const InsetsLevel(this.value);
  final double value;
}

enum RoundedLevel {
  highest(3.3),
  high(2.8),
  over(2.5),
  moderate(2.0),
  under(1.9),
  low(1.7),
  lowest(1.5);

  const  RoundedLevel(this.value);
  final double value;
}


abstract final class ThematicColors {
  static const Color exciplit = Color(0xFF181818);
  static const Color background = Color(0xFF292B2D);
  static const Color elementUnselected = Color(0xFF9B9EA2);
  static const Color elementSelected = Color(0xFFFFFFFF);
  static const Color text = Color(0xFFFFFFFF);
  static const Color textGrayed = Color(0xFFB6B6B6);
  static const Color accent = Color(0xFFB47563);
}


abstract final class ThematicStyles {
  static const String font = 'Varela Round';
  static const double borderRadiusFactor = 1.0;
  static const double edgeInsetsFactor = 1.0;

  static TextStyle text({TextSize? size, Color? color, bool? bold}) => GoogleFonts.getFont(
    font,
    fontSize: size != null ? 18 * size.factor : 18,
    color: color != null ? color : ThematicColors.text,
    fontWeight: bold != null && bold == true ? FontWeight.bold : FontWeight.normal
  );
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
