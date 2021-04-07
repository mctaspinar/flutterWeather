import 'package:flutter/material.dart';

import '../models/weather.dart';

class WeatherIconWidget extends StatelessWidget {
  ConsolidatedWeather consolidatedWeather;
  WeatherIconWidget(this.consolidatedWeather);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            consolidatedWeather.theTemp.floor().toString() + "°C",
            style: TextStyle(fontSize: 50),
          ),
        ),
        Image.network(
          "https://www.metaweather.com/static/img/weather/png/${consolidatedWeather.weatherStateAbbr}.png",
          height: 250,
          width: 250,
        )
      ],
    );
  }
}
