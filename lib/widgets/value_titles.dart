import 'package:flutter/material.dart';
import 'package:weather_app/utils/extension.dart';

class ValueTile extends StatelessWidget {
  final String label;
  final String value;

  const ValueTile({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style:
              TextStyle(color: context.theme.colorScheme.primary.withAlpha(80)),
        ),
        const SizedBox(
          height: 5,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          value,
          style: TextStyle(color: context.colorScheme.primary),
        ),
      ],
    );
  }
}
