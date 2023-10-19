class NewsModel {
  final String title;
  final String description;
  final String urlImage;

  NewsModel(
      {required this.title, required this.description, required this.urlImage});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'] as String,
      description: json['description'] as String,
      urlImage: json['urlImage'] as String,
    );
  }
}
