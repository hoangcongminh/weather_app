import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    String? name,
    double? latitude,
    double? longitude,
    @JsonKey(name: "country_code") String? countryCode,
    String? admin1,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, Object?> json) =>
      _$CityModelFromJson(json);
}
