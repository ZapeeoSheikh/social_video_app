import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../model/weather_model.dart';

class HttpHelper with ChangeNotifier {
  String domainName = "api.openweathermap.org";
  String path = "data/2.5/weather";
  String apiKey = "b2ffdc51f9cf000f1d73c1d3d33ccfd9";
  String lat = "31.573152";
  String lon = "74.3078585";
  WeatherModel? obj;

  Future<WeatherModel> getWeather() async {
    Map<String, dynamic> parameters = {"lat": lat, "lon": lon, "appid": apiKey};
    Uri apiUrl = Uri.https(domainName, path, parameters);
    http.Response response = await http.get(apiUrl);
    Map<String, dynamic> dataMap = json.decode(response.body);

    obj = WeatherModel.fromJson(dataMap);
    print(obj);
    notifyListeners();
    return obj!;
  }

  reInit() {
    obj = null;
    notifyListeners();
    getWeather();
  }
}
