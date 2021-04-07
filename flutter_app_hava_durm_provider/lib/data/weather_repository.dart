import '../data/weather_api.dart';
import '../models/weather.dart';

import '../service_locator.dart';

class WeatherRepo {
  WeatherApiClient weatherApiClient = locator<WeatherApiClient>();

  Future<Weather> getWeather(String city) async {
    final int cityId = await weatherApiClient.getLocationID(city);
    return await weatherApiClient.getWeather(cityId);
  }
}
