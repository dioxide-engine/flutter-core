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
bool isUserThemeLoaded = false;
bool errorSend = false;
Thematic get theme {
  if (isUserThemeLoaded) return _theme;
  try {
    return ThematicStandard.theme;
  } finally {
    if (!errorSend) {
      errorSend = !errorSend;
      throw ErrorDescription('The user theme isn\'t available. '
          'Make sure you have successfully loaded the environment (it is including the theme).');
    }
  }
}
Future<void> _loadTheme() async {
  try {
    _theme = await Thematic.fromJson(
        jsonDecode(
            await rootBundle.loadString('assets/blueprint/theme/default_theme.json')
        )
    );
  } catch(_) {
    throw ErrorDescription('Theme could\'nt be loaded: $_');
  }
}

final class Thematic {
  final ThematicGeneral general;
  final ThematicColors colors;
  final ThematicSyntax syntax;
  const Thematic({
    required this.general,
    required this.colors,
    required this.syntax,
  });
  static Thematic fromJson(Map<String, dynamic>? json)  {
    return Thematic(
        general: nonNullExtraction<ThematicGeneral>(ThematicGeneral.fromJson(json?['general']), theme.general),
        colors: nonNullExtraction<ThematicColors>(ThematicColors.fromJson(json?['colors']), theme.colors),
        syntax: nonNullExtraction<ThematicSyntax>(ThematicSyntax.fromJson(json?['syntax']), theme.syntax),
    );
  }
}
