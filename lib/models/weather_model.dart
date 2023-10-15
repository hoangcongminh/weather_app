class WeatherModel {
  final num? temp;
  final num? tempMin;
  final num? tempMax;
  final String? condition;
  final String? icon;
  final String? cityName;

  WeatherModel(
    this.temp,
    this.tempMin,
    this.tempMax,
    this.condition,
    this.icon,
    this.cityName,
  );

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        json['main']['temp'],
        json['main']['temp_min'],
        json['main']['temp_max'],
        json['weather'][0]['main'],
        json['weather'][0]['icon'],
        json['name'],
      );
}
