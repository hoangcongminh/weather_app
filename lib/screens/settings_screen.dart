import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/application_bloc/application_bloc.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/core/application_state_base.dart';
import 'package:weather_app/utils/extension.dart';
import 'package:weather_app/widgets/setting_item.dart';

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
        title: Text(context.l10n.settings),
        centerTitle: false,
      ),
      body: BlocConsumer<ApplicationBloc, ApplicationBlocState>(
        listener: (context, state) {
          context.read<WeatherBloc>().add(RefreshWeather(state.isCelsius));
        },
        builder: (context, state) {
          return Column(
            children: [
              SettingItem(
                title: context.l10n.theme,
                raidioTitles: [context.l10n.light, context.l10n.dark],
                values: const [ThemeMode.light, ThemeMode.dark],
                groupValue: state.themeMode,
                onChangeds: [
                  () => applicationBloc.add(
                      const ApplicationBlocEvent.changeTheme(ThemeMode.light)),
                  () => applicationBloc.add(
                      const ApplicationBlocEvent.changeTheme(ThemeMode.dark)),
                ],
              ),
              const SizedBox(height: 16),
              SettingItem(
                title: context.l10n.unit,
                raidioTitles: const ["Celcious", "Fahrenheit"],
                values: const [true, false],
                groupValue: state.isCelsius,
                onChangeds: [
                  () => applicationBloc
                      .add(const ApplicationBlocEvent.changeUnit(true)),
                  () => applicationBloc
                      .add(const ApplicationBlocEvent.changeUnit(false)),
                ],
              ),
              const SizedBox(height: 16),
              SettingItem(
                title: context.l10n.language,
                raidioTitles: [context.l10n.english, context.l10n.vietnamese],
                values: const ["en", "vi"],
                groupValue: state.locale,
                onChangeds: [
                  () => applicationBloc
                      .add(const ApplicationBlocEvent.changeLocale("en")),
                  () => applicationBloc
                      .add(const ApplicationBlocEvent.changeLocale("vi")),
                ],
              )
            ],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
