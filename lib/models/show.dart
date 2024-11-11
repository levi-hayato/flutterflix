class Show {
  final String name;
  final String imageUrl;
  final String summary;

  Show({required this.name, required this.imageUrl, required this.summary});

  factory Show.fromJson(Map<String, dynamic> json) {
    return Show(
      name: json['show']['name'] ?? 'Unknown',
      imageUrl: json['show']['image']?['medium'] ?? '',
      summary: json['show']['summary'] ?? '',
    );
  }
}
