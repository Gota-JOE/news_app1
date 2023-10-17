class NewsModel {
  final String title;
  final String description;

  NewsModel({required this.title, required this.description});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }
}
