import 'package:flutter/material.dart';
import 'package:weather_app/utils/extension.dart';

class SettingItem extends StatefulWidget {
  final String title;
  final List<String> raidioTitles;
  final List values;
  final dynamic groupValue;
  final List<Function> onChangeds;

  const SettingItem({
    super.key,
    required this.title,
    required this.raidioTitles,
    required this.values,
    required this.groupValue,
    required this.onChangeds,
  });

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: context.colorScheme.primary.withOpacity(0.1),
          ),
          child: Column(
            children: [
              RadioListTile(
                title: Text(widget.raidioTitles[0]),
                value: widget.values[0],
                groupValue: widget.groupValue,
                onChanged: (value) => widget.onChangeds[0](),
                activeColor: context.colorScheme.primary,
              ),
              Divider(
                color: context.colorScheme.onSecondary,
                height: 1,
              ),
              RadioListTile(
                title: Text(widget.raidioTitles[1]),
                value: widget.values[1],
                groupValue: widget.groupValue,
                onChanged: (value) => widget.onChangeds[1](),
                activeColor: context.colorScheme.primary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
