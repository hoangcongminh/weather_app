import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension DoubleExtension on num {
  String get celciusString {
    return "${round()}°C";
  }

  String get fahrenheitString {
    return "${round()}°F";
  }
}

extension Helper on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
