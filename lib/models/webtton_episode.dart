class WebToonEpisode {
  final String title, rating, date, id;

  WebToonEpisode.fromJson(Map<String, dynamic> json)
      : title = json['id'],
        rating = json['rating'],
        date = json['date'],
        id = json['id'];
}
