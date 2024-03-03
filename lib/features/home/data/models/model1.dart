class NewsModel {
  final String image;
  final String title;
  final String url;

  NewsModel({
    required this.image,
    required this.title,
    required this.url,
  });

  factory NewsModel.fromJson(json) {
    return NewsModel(
      image: json['image_url'],
      title: json['title'],
      url: json['url'],
    );
  }
}
