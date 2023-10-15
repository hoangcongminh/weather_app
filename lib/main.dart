import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_app/blocs/application_bloc/application_bloc.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/theme.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'screens/main_screen.dart';
import 'repositories/weather_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );

  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => WeatherBloc(WeatherRepository())),
        BlocProvider(create: (context) => ApplicationBloc()),
      ],
      child: BlocBuilder<ApplicationBloc, ApplicationBlocState>(
        builder: (context, state) {
          return MaterialApp(
            theme: ApplicationTheme.lightTheme,
            darkTheme: ApplicationTheme.darkTheme,
            themeMode: state.themeMode,
            debugShowCheckedModeBanner: false,
            locale: Locale(state.locale),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
