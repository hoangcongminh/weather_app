import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/core/constants.dart';
import 'package:weather_app/core/failure.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherRepository {
  Future<Either<Failure, WeatherModel>> featchWeather({
    double? lat,
    double? lon,
    required bool isCelcious,
  }) async {
    final Uri uri = Uri.parse(
      "${AppConstant.weatherURL}weather?lat=$lat&lon=$lon&appid=${AppConstant.apiKey}&units=${isCelcious ? "metric" : "imperial"}",
    );

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return Right(WeatherModel.fromJson(jsonDecode(response.body)));
      } else {
        final message = jsonDecode(response.body)['message'];
        return Left(ServerFailure(message));
      }
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
