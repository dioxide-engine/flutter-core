import 'package:methylene/theme.dart';


final class ThematicGeneral {
  late final double symbolScaleFactor;
  late final double interfaceScaleFactor;
  late final ThematicGeneralText text;
  late final ThematicGeneralGeometry geometry;
  ThematicGeneral({
    required this.symbolScaleFactor,
    required this.interfaceScaleFactor,
    required this.text,
    required this.geometry,
  });
  static ThematicGeneral fromJson(Map<String, dynamic>? json) {
    return ThematicGeneral(
      symbolScaleFactor: _getValueOrStandard<double>(json?['symbol_scale_factor'], theme.general.symbolScaleFactor),
      interfaceScaleFactor: _getValueOrStandard<double>(json?['interface_scale_factor'], theme.general.interfaceScaleFactor),
      text: _getValueOrStandard<ThematicGeneralText>(ThematicGeneralText.fromJson(json?['text']), theme.general.text),
      geometry: _getValueOrStandard<ThematicGeneralGeometry>(ThematicGeneralGeometry.fromJson(json?['geometry']), theme.general.geometry),
    );
  }

}

final class ThematicGeneralText {
  late final String font;
  late final double fontScaleFactor;
  late final ThematicGeneralFactorLevel fontScaleFactorLevel;
  ThematicGeneralText({
    required this.font,
    required this.fontScaleFactor,
    required this.fontScaleFactorLevel
  });
  static ThematicGeneralText fromJson(Map<String, dynamic>? json) {
    return ThematicGeneralText(
      font: _getValueOrStandard<String>(json?['font'], theme.general.text.font),
      fontScaleFactor: _getValueOrStandard<double>(json?['font_scale_factor'], theme.general.text.fontScaleFactor),
      fontScaleFactorLevel: _getValueOrStandard<ThematicGeneralFactorLevel>(ThematicGeneralFactorLevel.fromJson(json?['font_scale_factor_level']), theme.general.text.fontScaleFactorLevel),
    );
  }
}

final class ThematicGeneralFactorLevel {
  late final double highest;
  late final double high;
  late final double over;
  late final double moderate;
  late final double under;
  late final double low;
  late final double lowest;
  ThematicGeneralFactorLevel({
    required this.highest,
    required this.high,
    required this.over,
    required this.moderate,
    required this.under,
    required this.low,
    required this.lowest
  });
  static ThematicGeneralFactorLevel fromJson(Map<String, dynamic>? json)
  => ThematicGeneralFactorLevel(
        highest: _getValueOrStandard<double>(json?['highest'], 1.6),
        high: _getValueOrStandard<double>(json?['high'], 1.4),
        over:  _getValueOrStandard<double>(json?['over'], 1.2),
        moderate:  _getValueOrStandard<double>(json?['moderate'], 1.0),
        under:  _getValueOrStandard<double>(json?['under'], 0.8),
      low:  _getValueOrStandard<double>(json?['low'], 0.6),
      lowest:  _getValueOrStandard<double>(json?['lowest'], 0.4)
    );
}

final class ThematicGeneralGeometry {
  late final ThematicGeneralGeometryInsets insets;
  late final ThematicGeneralGeometryRounding rounding;
  ThematicGeneralGeometry({
    required this.insets,
    required this.rounding
  });
  static ThematicGeneralGeometry fromJson(Map<String, dynamic>? json) {
    return ThematicGeneralGeometry(
        insets: _getValueOrStandard<ThematicGeneralGeometryInsets>(ThematicGeneralGeometryInsets.fromJson(json?['insets']), theme.general.geometry.insets),
        rounding: _getValueOrStandard<ThematicGeneralGeometryRounding>(ThematicGeneralGeometryRounding.fromJson(json?['rounding']), theme.general.geometry.rounding)
    );
  }
}

final class ThematicGeneralGeometryInsets {
  late final double factor;
  late final ThematicGeneralFactorLevel factorLevel;
  ThematicGeneralGeometryInsets({
    required this.factor,
    required this.factorLevel
  });
  static ThematicGeneralGeometryInsets fromJson(Map<String, dynamic>? json) {
    return ThematicGeneralGeometryInsets(
      factor: _getValueOrStandard<double>(json?['factor'], theme.general.geometry.insets.factor),
      factorLevel: _getValueOrStandard<ThematicGeneralFactorLevel>(ThematicGeneralFactorLevel.fromJson(json?['factor_level']), theme.general.geometry.insets.factorLevel),
    );
  }
}

final class ThematicGeneralGeometryRounding {
  late final double factor;
  late final ThematicGeneralFactorLevel factorLevel;
  ThematicGeneralGeometryRounding({
    required this.factor,
    required this.factorLevel
  });
  static ThematicGeneralGeometryRounding fromJson(Map<String, dynamic>? json) {
    return ThematicGeneralGeometryRounding(
      factor: _getValueOrStandard<double>(json?['factor'], theme.general.geometry.rounding.factor),
      factorLevel: _getValueOrStandard<ThematicGeneralFactorLevel>(ThematicGeneralFactorLevel.fromJson(json?['factor_level']), theme.general.geometry.rounding.factorLevel),
    );
  }
}
Type _getValueOrStandard<Type>(Type? value, Type standard) {
  return value != null ? value : standard;
}
