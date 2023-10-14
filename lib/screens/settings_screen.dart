import 'package:flutter/material.dart';
import 'package:weather_app/blocs/application_bloc/application_bloc.dart';
import 'package:weather_app/blocs/core/application_state_base.dart';
import 'package:weather_app/extension.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ApplicationStateBase<SettingsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        children: [
          SettingsItem(
            title: "Theme",
            raidioTitles: const ["Light", "Dark"],
            values: const [ThemeMode.light, ThemeMode.dark],
            groupValue: applicationBloc.state.themeMode,
            onChangeds: [
              () => applicationBloc
                  .add(const ApplicationBlocEvent.changeTheme(ThemeMode.light)),
              () => applicationBloc
                  .add(const ApplicationBlocEvent.changeTheme(ThemeMode.dark)),
            ],
          ),
          SettingsItem(
            title: "Unit",
            raidioTitles: const ["Celcious", "Fahrenheit"],
            values: const [true, false],
            groupValue: applicationBloc.state.isCelsius,
            onChangeds: [
              () => applicationBloc
                  .add(const ApplicationBlocEvent.changeUnit(true)),
              () => applicationBloc
                  .add(const ApplicationBlocEvent.changeUnit(false)),
            ],
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class SettingsItem extends StatefulWidget {
  final String title;
  final List<String> raidioTitles;
  final List values;
  final dynamic groupValue;
  final List<Function> onChangeds;

  const SettingsItem({
    super.key,
    required this.title,
    required this.raidioTitles,
    required this.values,
    required this.groupValue,
    required this.onChangeds,
  });

  @override
  State<SettingsItem> createState() => _SettingsItemState();
}

class _SettingsItemState extends State<SettingsItem> {
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
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.raidioTitles[0]),
                  Radio(
                    value: widget.values[0],
                    groupValue: widget.groupValue,
                    onChanged: (value) => widget.onChangeds[0](),
                    activeColor: context.colorScheme.primary,
                  )
                ],
              ),
              Divider(
                color: context.colorScheme.onSecondary,
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.raidioTitles[1]),
                  Radio(
                    value: widget.values[1],
                    groupValue: widget.groupValue,
                    onChanged: (value) => widget.onChangeds[1](),
                    activeColor: context.colorScheme.primary,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
