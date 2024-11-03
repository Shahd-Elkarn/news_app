import 'package:dio/dio.dart';
import 'package:project1/models/article_model.dart';

class NewsServie {
  final Dio dio;

  NewsServie({required this.dio});

// final dio = Dio();

// void getHttp() async {
//   final response = await dio.get('https://dart.dev');
//   print(response);
// }

  Future<List<ArticleModel>> getTopHeadlinesNews({required String category}) async {
    try {
  Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=4058da5bbcfb4ea2bdae7e4fb50d7ed8&category=$category');
  
  Map<String, dynamic> jsonData = response.data;
  
  List<dynamic> articles = jsonData['articles'];
  List<ArticleModel> articlesList = [];
  
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel.fromJson(article);
    articlesList.add(articleModel);
  }
  
  return articlesList;
}   catch (e) {
  // TODO
  return [];
}
  }
}
