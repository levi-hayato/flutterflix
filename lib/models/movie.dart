class Movie {
  final String name;
  final String imageUrl;
  final String summary;

  Movie({required this.name, required this.imageUrl, required this.summary});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['show']['name'],
      imageUrl: json['show']['image']?['medium'] ?? '',
      summary: json['show']['summary'] ?? '',
    );
  }
}
