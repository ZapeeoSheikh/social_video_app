class WeatherModel {
  double temperature = 0.0;
  double windSpeed = 0.0;
  int humidity = 0;
  int cloudCover = 0;
  String description = "";
  String cityName = "";

  WeatherModel(this.temperature, this.windSpeed, this.humidity, this.cloudCover,
      this.description, this.cityName);

  WeatherModel.fromJson(Map<String, dynamic> data) {
    temperature = (data['main']['temp'] - 273.15) ?? 0.0;
    humidity = (data['main']['humidity']) ?? 0;
    windSpeed = (data['wind']['speed']) ?? 0.0;
    cloudCover = (data['clouds']['all']) ?? 0;
    description = (data['weather'][0]['description']) ?? "";
    cityName = (data['name']) ?? "";
  }
}
