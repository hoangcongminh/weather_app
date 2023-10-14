import 'package:flutter/material.dart';

extension DoubleExtension on num {
  String get celciusString {
    return "${round()}°C";
  }

  String get fahrenheitString {
    return "${round()}°F";
  }
}

extension Helper on BuildContext {
  get theme => Theme.of(this);
  get colorScheme => Theme.of(this).colorScheme;
  get textTheme => Theme.of(this).textTheme;
}
