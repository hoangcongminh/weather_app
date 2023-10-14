import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/repositories/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc(this.weatherRepository) : super(WeatherInitial()) {
    on<FeatchWeather>(_onFeatchWeatherByCityName);
  }

  FutureOr<void> _onFeatchWeatherByCityName(event, emit) {
    emit(WeatherLoading());
    return weatherRepository
        .featchWeather(
            lat: event.lat, lon: event.lon, isCelcious: event.isCelcious)
        .then((weather) => emit(WeatherLoaded(weather)))
        .catchError((error) => emit(WeatherError(error.toString())));
  }
}
