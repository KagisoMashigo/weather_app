import 'weather_api_client.dart';

void main(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Syntax: dart bin/main.dart <city>');
    return;
  }
  final city = arguments.first;
  // print(city);
  final api = WeatherApiClient();
  final locationId = await api.getLocationId(city);
  // print(locationId);
  final weather = await api.getWeather(city);
  print(weather);
}
