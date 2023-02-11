class Weather {
  String? cityName;
  double? temp;
  double? feelsLike;
  double? pressure;
  double? wind;
  int? humidity;

  Weather(
      {this.cityName,
      this.feelsLike,
      this.humidity,
      this.pressure,
      this.temp,
      this.wind});

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    feelsLike = json["main"]["feels_like"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    wind = json["wind"]["speed"];
  }
}