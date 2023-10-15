part of 'weather_bloc.dart';

class WeatherEvent {}

class FeatchWeather extends WeatherEvent {
  final double? lat;
  final double? lon;
  final bool isCelcious;

  FeatchWeather(this.lat, this.lon, this.isCelcious);
}

class FetchCurrentLocationWeather extends WeatherEvent {
  final bool isCelcious;
  FetchCurrentLocationWeather(this.isCelcious);
}

class RefreshWeather extends WeatherEvent {
  final bool isCelcious;
  RefreshWeather(this.isCelcious);
}
