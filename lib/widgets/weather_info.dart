import 'package:flutter/material.dart';
import 'package:weather_app/extension.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/widgets/value_titles.dart';

class WeatherInfo extends StatelessWidget {
  final WeatherModel weather;
  final bool isCelcious;
  const WeatherInfo({
    super.key,
    required this.weather,
    required this.isCelcious,
  });

  String getTempString(num? temp, bool isCelcious) {
    if (temp == null) {
      return "";
    }

    if (isCelcious) {
      return temp.celciusString;
    }
    return temp.fahrenheitString;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weather.cityName ?? "",
          style: const TextStyle(
            fontSize: 25,
            letterSpacing: 5,
            // color: appTheme.accentColor,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          weather.condition.toString(),
          // style: Theme.of(context).textTheme.bodyMedium,
          style: const TextStyle(
            fontSize: 15,
            letterSpacing: 5,
            fontWeight: FontWeight.w100,
            // color: appTheme.accentColor,
          ),
        ),
        Image.network(
          "https://openweathermap.org/img/wn/10d@2x.png",
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const CircularProgressIndicator();
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          getTempString(weather.temp, isCelcious),
          // style: Theme.of(context).textTheme.titleLarge,
          style: TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.w100,
            color: context.theme.colorScheme.primary,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ValueTile(
                label: "max",
                value: getTempString(weather.tempMax, isCelcious)),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Center(
                  child: Container(
                width: 1,
                height: 30,
                color: context.colorScheme.primary.withAlpha(50),
              )),
            ),
            ValueTile(
                label: "min",
                value: getTempString(weather.tempMin, isCelcious)),
          ],
        ),
      ],
    );
  }
}
