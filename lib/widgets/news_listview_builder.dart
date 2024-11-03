import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project1/models/article_model.dart';
import 'package:project1/services/news_service.dart';
import 'package:project1/widgets/new_listview.dart';

class NewsListviewBuilder extends StatefulWidget {
  const NewsListviewBuilder({super.key,required this.category});
  final String category;

  @override
  State<NewsListviewBuilder> createState() => _NewsListviewBuilderState();
}

class _NewsListviewBuilderState extends State<NewsListviewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsServie(dio: Dio()).getTopHeadlinesNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewListview(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('Opps, there was an error'),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
