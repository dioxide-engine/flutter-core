import 'package:methylene/theme.dart';


final class ThematicGeneral extends ThematicValue<ThematicGeneral> {
  final ThematicValue<double> symbolScaleFactor = ThematicValue('symbol_scale_factor', theme.general.symbolScaleFactor.value);
  final ThematicValue<double> interfaceScaleFactor = ThematicValue('interface_scale_factor', theme.general.interfaceScaleFactor.value);
  final ThematicGeneralText text = ThematicGeneralText();
  final ThematicGeneralGeometry geometry = ThematicGeneralGeometry();
  ThematicGeneral({
    double? symbolScaleFactor,
    double? interfaceScaleFactor,
    ThematicGeneralText? text,
    ThematicGeneralGeometry? geometry,
  }) : super('general', theme.general) {
    this
      ..symbolScaleFactor.imposeValue(symbolScaleFactor)
      ..interfaceScaleFactor.imposeValue(interfaceScaleFactor)
      ..text.imposeValue(text)
      ..geometry.imposeValue(geometry);
    setValue(this);
  }
  factory ThematicGeneral.fromJson(Map<String, dynamic>? json) {
    ThematicGeneral thematicGeneral = ThematicGeneral();
    thematicGeneral
      ..symbolScaleFactor.imposeValue(json?[thematicGeneral.symbolScaleFactor.key])
      ..interfaceScaleFactor.imposeValue(json?[thematicGeneral.interfaceScaleFactor.key])
      ..text.imposeValue(ThematicGeneralText.fromJson(json?[thematicGeneral.text.key]))
      ..geometry.imposeValue(ThematicGeneralGeometry.fromJson(json?[thematicGeneral.geometry.key]));
    thematicGeneral.setValue(thematicGeneral);
    return thematicGeneral;
  }
  Map<String, dynamic> toJson() {
    setValue(this);
    return Map.fromEntries([
      symbolScaleFactor.toEntry(),
      interfaceScaleFactor.toEntry(),
      text.toEntry(),
      geometry.toEntry()
    ]);
  }
}

final class ThematicGeneralText extends ThematicValue<ThematicGeneralText> {
  final ThematicValue<String> font = ThematicValue('font', theme.general.text.font.value);
  final ThematicValue<double> fontScaleFactor = ThematicValue('font_scale_factor', theme.general.text.fontScaleFactor.value);
  final ThematicGeneralFactorLevel fontScaleFactorLevel = ;
  ThematicGeneralText({
    String? font,
    double? fontScaleFactor,
    ThematicGeneralFactorLevel? fontScaleFactorLevel
  }) : super('text', theme.general.text);
  static ThematicGeneralText fromJson(Map<String, dynamic>? json) {
    return ThematicGeneralText(
      font: _getValueOrStandard<String>(json?['font'], theme.general.text.font.value),
      fontScaleFactor: _getValueOrStandard<double>(json?['font_scale_factor'], theme.general.text.fontScaleFactor),
      fontScaleFactorLevel: _getValueOrStandard<ThematicGeneralFactorLevel>(ThematicGeneralFactorLevel.fromJson(json?['font_scale_factor_level']), theme.general.text.fontScaleFactorLevel),
    );
  }
  Map<String, dynamic> toJson() {
    setValue(this);
    return Map.fromEntries([

    ]);
  }
}

final class ThematicGeneralFactorLevel extends ThematicValue<ThematicGeneralFactorLevel> {
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
  Map<String, dynamic> toJson() {
    return {};
  }
}

final class ThematicGeneralGeometry extends ThematicValue<ThematicGeneralGeometry> {
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
  Map<String, dynamic> toJson() {
    return {};
  }
}

final class ThematicGeneralGeometryInsets extends ThematicValue<ThematicGeneralGeometryInsets> {
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
  Map<String, dynamic> toJson() {
    return {};
  }
}

final class ThematicGeneralGeometryRounding extends ThematicValue<ThematicGeneralGeometryRounding> {
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
  Map<String, dynamic> toJson() {
    return {};
  }
}
Type _getValueOrStandard<Type>(Type? value, Type standard) {
  return value != null ? value : standard;
}
