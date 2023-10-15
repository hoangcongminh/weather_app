import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/repositories/weather_repository.dart';
import 'package:weather_app/services/location_services.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc(this.weatherRepository) : super(WeatherInitial()) {
    on<FeatchWeather>(_onFeatchWeatherByCityName);
    on<FetchCurrentLocationWeather>(_onFetchCurrentLocationWeather);
    on<RefreshWeather>(_onRefreshWeather);
  }

  double? currentLat;
  double? currentLon;
  bool? currentIsCelcious;

  FutureOr<void> _onFeatchWeatherByCityName(event, emit) async {
    emit(WeatherLoading());
    currentLat = event.lat;
    currentLon = event.lon;
    currentIsCelcious = event.isCelcious;

    await weatherRepository
        .featchWeather(
            lat: event.lat, lon: event.lon, isCelcious: event.isCelcious)
        .then(
      (weatherResponse) {
        weatherResponse.fold(
          (failure) => emit(WeatherFetchError(failure.message)),
          (weather) => emit(WeatherLoaded(weather)),
        );
      },
    );
  }

  FutureOr<void> _onFetchCurrentLocationWeather(event, emit) async {
    emit(WeatherLoading());
    await LocationServices.getCurrentLocation().then((position) {
      currentLat = position.latitude;
      currentLon = position.longitude;
      currentIsCelcious = event.isCelcious;
      return weatherRepository
          .featchWeather(
              lat: position.latitude,
              lon: position.longitude,
              isCelcious: event.isCelcious)
          .then(
        (weatherResponse) {
          weatherResponse.fold(
            (failure) => emit(WeatherFetchError(failure.message)),
            (weather) => emit(WeatherLoaded(weather)),
          );
        },
      );
    }).catchError((e) {
      emit(WeatherFetchError(e.toString(), type: WeatherErrorType.location));
    });
  }

  FutureOr<void> _onRefreshWeather(event, emit) async {
    emit(WeatherLoading());
    await weatherRepository
        .featchWeather(
            lat: currentLat, lon: currentLon, isCelcious: event.isCelcious)
        .then(
      (weatherResponse) {
        weatherResponse.fold(
          (failure) => emit(WeatherFetchError(failure.message)),
          (weather) => emit(WeatherLoaded(weather)),
        );
      },
    );
  }
}
