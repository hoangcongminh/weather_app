import 'dart:convert';

import 'package:weather_app/core/constants.dart';
import 'package:weather_app/models/city_model.dart';
import 'package:http/http.dart' as http;

class CityRepository {
  static Future<List<CityModel>> getCity(String cityQuery) async {
    final uri = Uri.parse(
        '${AppConstant.cityURL}search?name=$cityQuery&count=5&&format=json');

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final res = jsonDecode(response.body) as Map<String, dynamic>;
        final results = res['results'] as List<dynamic>?;
        if (results == null) return [];
        return results.map((e) => CityModel.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
