class CityModel {
  final String? name;
  final double? latitude;
  final double? longitude;
  final String? countryCode;
  final String? admin1;

  CityModel(
    this.name,
    this.latitude,
    this.longitude,
    this.countryCode,
    this.admin1,
  );

  factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
        json['name'],
        json['latitude'],
        json['longitude'],
        json['country_code'],
        json['admin1'],
      );
}
