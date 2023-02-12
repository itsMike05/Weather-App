class Weather {
  String? cityName;
  double? temp;
  double? feelsLike;
  int? pressure;
  double? wind;
  int? humidity;

  Weather(
      {this.cityName,
      this.feelsLike,
      this.humidity,
      this.pressure,
      this.temp,
      this.wind});

  factory Weather.fromJson(Map<String, dynamic> json) {
    print(json);
    return Weather(
      cityName: json["name"],
      temp: json["main"]["temp"],
      feelsLike: json["main"]["feels_like"],
      pressure: json["main"]["pressure"],
      //humidity: json["main"]["humidity"],
      //wind: json["wind"]["speed"],
    );
    // cityName = json["name"];
    // temp = json["main"]["temp"];
    // feelsLike = json["main"]["feels_like"];
    // pressure = json["main"]["pressure"];
    // humidity = json["main"]["humidity"];
    // wind = json["wind"]["speed"];
  }
}
