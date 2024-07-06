import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:methylene/theme/colors.dart';
import 'package:methylene/theme/general.dart';
import 'package:methylene/theme/standard.dart';
import 'package:methylene/theme/syntax.dart';

export 'package:methylene/theme/colors.dart';
export 'package:methylene/theme/general.dart'
    show
      ThematicGeneral,
      ThematicGeneralText,
      ThematicGeneralGeometry,
      ThematicGeneralGeometryInsets,
      ThematicGeneralGeometryRounding,
      ThematicGeneralFactorLevel;
export 'package:methylene/theme/syntax.dart'
    show
      ThematicSyntax;

late final Thematic _theme;
bool _isUserThemeLoaded = false;
bool _errorSend = false;
Thematic get theme {
  if (_isUserThemeLoaded) return _theme;
  try {
    return ThematicMisc.standardTheme;
  } finally {
    if (!_errorSend) {
      _errorSend = !_errorSend;
      throw ErrorDescription('The user theme isn\'t available. '
          'Make sure you have successfully loaded the environment (it is including the theme).');
    }
  }
}

Future<void> loadTheme(File file) async {
  if (_isUserThemeLoaded) return;
  if (!await file.exists()) throw ErrorDescription('Theme could\'nt be loaded because specified file don\'t exists. File: ${file.path}');
  try {
    _theme = await Thematic.fromJson(
        jsonDecode(
            await rootBundle.loadString('assets/blueprint/theme/default_theme.json')
        )
    );
    _isUserThemeLoaded = !_isUserThemeLoaded;
  } catch(_) {
    throw ErrorDescription('Theme could\'nt be loaded: $_');
  }
}

final class Thematic {
  final ThematicGeneral general = ThematicGeneral();
  final ThematicColors colors = ThematicColors();
  final ThematicSyntax syntax = ThematicSyntax();
  Thematic({
    ThematicGeneral? general,
    ThematicColors? colors,
    ThematicSyntax? syntax,
  }) {
    this
      ..general.imposeValue(general)
      ..colors.imposeValue(colors)
      ..syntax.imposeValue(syntax);
  }
  factory Thematic.fromJson(Map<String, dynamic>? json)  {
    Thematic thematic = Thematic();
    thematic
      ..general.imposeValue(ThematicGeneral.fromJson(json?[thematic.general.key]))
      ..colors.imposeValue(ThematicColors.fromJson(json?[thematic.colors.key]))
      ..syntax.imposeValue(ThematicSyntax.fromJson(json?[thematic.syntax.key]));
    return thematic;
  }
  Map<String, dynamic> toJson() {
    return Map.fromEntries([
      general.toEntry(),
      colors.toEntry(),
      syntax.toEntry()
    ]);
  }
}
@immutable
class ThematicValue<T> {
  final String key;
  final T fallback;
  late final T? _value;
  ThematicValue(this.key, this.fallback);
  @protected
  void setValue(T value) => _value == null ? _value = value : null;
  void imposeValue(T? value) => _value == null ? _value = value == null ? fallback : value : null;
  T get value => _value == null ? fallback : _value;
  MapEntry<String, T> toEntry() => MapEntry(key, value);
}