import 'package:flutter/material.dart';

import '../models/weather.dart';

class MaxMinTempWidget extends StatelessWidget {
  ConsolidatedWeather consolidatedWeather;
  MaxMinTempWidget(this.consolidatedWeather);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child:
                  Text("En yüksek : ${consolidatedWeather.maxTemp.floor()}°C"),
            ),
            Text("En düşük : ${consolidatedWeather.minTemp.floor()}°C"),
          ],
        ),
      ),
    );
  }
}
