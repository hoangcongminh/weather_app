import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/core/application_state_base.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/services/location_services.dart';
import 'package:weather_app/widgets/error_widget.dart';
import 'package:weather_app/widgets/search_widget.dart';
import 'package:weather_app/widgets/weather_info.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends ApplicationStateBase<WeatherPage>
    with AutomaticKeepAliveClientMixin {
  late TextEditingController textController;
  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    fetchCurrentLocationWeather();
  }

  void fetchCurrentLocationWeather() async {
    await LocationServices.getCurrentLocation().then((position) {
      context.read<WeatherBloc>().add(FeatchWeather(
            position.latitude,
            position.longitude,
            applicationBloc.state.isCelsius,
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
      ),
      body: Column(
        children: [
          SearchWeatherWidget(
            onSubmitted: (lat, lon) {
              context.read<WeatherBloc>().add(
                  FeatchWeather(lat, lon, applicationBloc.state.isCelsius));
            },
            onLocationPressed: fetchCurrentLocationWeather,
          ),
          Expanded(
            child: BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context, state) {
                if (state is WeatherError) {
                  return ErrorView(
                    error: state.message,
                    onRefresh: () {},
                  );
                } else if (state is WeatherLoaded) {
                  return WeatherInfo(
                    weather: state.weather,
                    isCelcious: applicationBloc.state.isCelsius,
                  );
                } else {
                  return const Center(
                      child: CircularProgressIndicator.adaptive());
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
