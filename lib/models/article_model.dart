
class ArticleModel {
  final String? image;
  final String? description;
  final String title;
  final String? url; 

  ArticleModel(
      {required this.image, required this.description, required this.title,this.url,});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      description: json['description'],
      title: json['title'],
      url: json['url'],
    );
  }
}
