import 'dart:io';

import 'weather_api_client.dart';

void main(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Syntax: dart bin/main.dart <city>');
    return;
  }
  final city = arguments.first;
  final api = WeatherApiClient();
  try {
    final weather = await api.getWeather(city);
    print(weather);
  } on WeatherException catch (e) {
    print(e.message);
  } on SocketException catch (_) {
    print('Could not connect to network');
  } catch (e) {
    print(e);
  }
}
