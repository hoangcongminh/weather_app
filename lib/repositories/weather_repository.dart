import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/common.dart';
import 'package:weather_app/model/city_model.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel> featchWeather({
    double? lat,
    double? lon,
    required bool isCelcious,
  }) async {
    final String url =
        "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=${AppConstant.API_KEY}&units=${isCelcious ? "metric" : "imperial"}";
    final Uri uri = Uri.parse(url);
    return await http.get(uri).then((value) {
      if (value.statusCode == 200) {
        return WeatherModel.fromJson(jsonDecode(value.body));
      } else {
        throw Exception("Error while fetching data");
      }
    });
  }

  Future<List<CityModel>> getCity(String cityQuery) async {
    final url =
        'https://geocoding-api.open-meteo.com/v1/search?name=$cityQuery&count=5&&format=json';
    final uri = Uri.parse(url);
    try {
      return await http.get(uri).then((value) {
        if (value.statusCode == 200) {
          final res = jsonDecode(value.body) as Map<String, dynamic>;
          final results = res['results'] as List<dynamic>?;
          if (results == null) return [];
          return results.map((e) => CityModel.fromJson(e)).toList();
        } else {
          throw Exception("Error while fetching data");
        }
      });
    } catch (e) {
      throw Exception("Error while fetching data");
    }
  }
}
