import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/application_state_base.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/services/location_services.dart';
import 'package:weather_app/widgets/error_widget.dart';
import 'package:weather_app/widgets/search_widget.dart';
import 'package:weather_app/widgets/weather_info.dart';
import 'package:weather_app/utils/extension.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends ApplicationStateBase<WeatherPage>
    with AutomaticKeepAliveClientMixin {
  late TextEditingController textController;
  late FocusNode weatherSearchFocusNode;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    weatherSearchFocusNode = FocusNode()
      ..addListener(() {
        if (!weatherSearchFocusNode.hasFocus) {
          setState(() {
            showWeatherSearch = false;
          });
        }
      });
    context
        .read<WeatherBloc>()
        .add(FetchCurrentLocationWeather(applicationBloc.state.isCelsius));
  }

  bool showWeatherSearch = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GestureDetector(
      onTap: () {
        if (weatherSearchFocusNode.hasFocus) {
          weatherSearchFocusNode.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: showWeatherSearch
              ? SearchWeatherWidget(
                  focusNode: weatherSearchFocusNode,
                  onSubmitted: (lat, lon) {
                    context.read<WeatherBloc>().add(FeatchWeather(
                        lat, lon, applicationBloc.state.isCelsius));
                  },
                )
              : Text(context.l10n.weather),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  showWeatherSearch = !showWeatherSearch;
                });
                if (showWeatherSearch) {
                  weatherSearchFocusNode.requestFocus();
                }
              },
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                context.read<WeatherBloc>().add(FetchCurrentLocationWeather(
                    applicationBloc.state.isCelsius));
              },
              icon: const Icon(Icons.location_on_outlined),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              if (state is WeatherError) {
                return ErrorView(
                  error: state.message,
                  onRefresh: () {},
                );
              } else if (state is WeatherLoaded) {
                return Center(
                  child: WeatherInfo(
                    weather: state.weather,
                    isCelcious: applicationBloc.state.isCelsius,
                  ),
                );
              } else if (state is WeatherLoading) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
