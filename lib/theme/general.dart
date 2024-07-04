import 'package:methylene/theme.dart';

final class ThematicGeneral {
  late final double symbolScaleFactor;
  late final double interfaceScaleFactor;
  late final ThematicGeneralText text;
  late final ThematicGeneralGeometry geometry;
  ThematicGeneral({
    double? symbolScaleFactor,
    double? interfaceScaleFactor,
    ThematicGeneralText? text,
    ThematicGeneralGeometry? geometry,
  }) {
    this.symbolScaleFactor = getValueOrStandard<double>(symbolScaleFactor, standard);
    this.interfaceScaleFactor = getValueOrStandard<double>(interfaceScaleFactor, standard);
    this.text = getValueOrStandard<ThematicGeneralText>(text, standard);
    this.geometry = getValueOrStandard<ThematicGeneralGeometry>(geometry, standard);
  }
}
final class ThematicGeneralText {
  late final String font;
  late final double fontScaleFactor;
  late final ThematicGeneralFactorLevel fontScaleFactorLevel;
  ThematicGeneralText({
    String? font,
    double? fontScaleFactor,
    ThematicGeneralFactorLevel? fontScaleFactorLevel
  }) {
    this.font = getValueOrStandard<String>(font, standard);
    this.fontScaleFactor = getValueOrStandard<double>(fontScaleFactor, standard);
    this.fontScaleFactorLevel = getValueOrStandard<ThematicGeneralFactorLevel>(fontScaleFactorLevel, standard);
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
  ThematicGeneralFactorLevel._internal({
    required this.highest,
    required this.high,
    required this.over,
    required this.moderate,
    required this.under,
    required this.low,
    required this.lowest
  }) {
    this.highest = getValueOrStandard<double>(highest, standard);
    this.high = getValueOrStandard<double>(high, standard);
    this.over = getValueOrStandard<double>(over, standard);
    this.moderate = getValueOrStandard<double>(moderate, standard);
    this.under = getValueOrStandard<double>(under, standard);
    this.low = getValueOrStandard<double>(low, standard);
    this.lowest = getValueOrStandard<double>(lowest, standard);
  }
  static Future<ThematicGeneralFactorLevel> fromJson(Map<String, dynamic>? json) async {
    Thematic defaultTheme = await getDefaultTheme;
    return ThematicGeneralFactorLevel._internal(
      highest: getValueOrStandard<double>(json?['highest'], defaultTheme.
      high: getValueOrStandard<double>(json?['high'],
      over:  getValueOrStandard<double>(json?['over'],
      moderate:  getValueOrStandard<double>(json?['moderate'],
      under:  getValueOrStandard<double>(json?['under'],
      low:  getValueOrStandard<double>(json?['low'],
      lowest:  getValueOrStandard<double>(json?['lowest'],
    );
  }
}
final class ThematicGeneralGeometry {
  late final ThematicGeneralGeometryInsets insets;
  late final ThematicGeneralGeometryRounding rounding;
  ThematicGeneralGeometry({
    ThematicGeneralGeometryInsets? insets,
    ThematicGeneralGeometryRounding? rounding
  }) {
    this.insets = getValueOrStandard<ThematicGeneralGeometryInsets>(insets, standard);
    this.rounding = getValueOrStandard<ThematicGeneralGeometryRounding>(rounding, standard);
  }
}
final class ThematicGeneralGeometryInsets {
  late final double factor;
  late final ThematicGeneralFactorLevel factorLevel;
  ThematicGeneralGeometryInsets({
    double? factor,
    ThematicGeneralFactorLevel? factorLevel
  }) {
    this.factor = getValueOrStandard<double>(factor, standard);
    this.factorLevel = getValueOrStandard<ThematicGeneralFactorLevel>(factorLevel, standard);
  }
}
final class ThematicGeneralGeometryRounding {
  late final double factor;
  late final ThematicGeneralFactorLevel factorLevel;
  ThematicGeneralGeometryRounding({
    double? factor,
    ThematicGeneralFactorLevel? factorLevel
  }) {
    this.factor = getValueOrStandard<double>(factor, standard);
    this.factorLevel = getValueOrStandard<ThematicGeneralFactorLevel>(factorLevel, standard);
  }

}