part of 'weather_bloc.dart';

enum WeatherErrorType {
  connection,
  location,
}

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final WeatherModel weather;

  WeatherLoaded(this.weather);
}

class WeatherFetchError extends WeatherState {
  final String message;
  final WeatherErrorType type;

  WeatherFetchError(this.message, {this.type = WeatherErrorType.connection});
}
