
import 'package:flutter/material.dart';
import 'package:project1/models/article_model.dart';

import 'news_tile.dart';

class NewListview extends StatelessWidget {
   const NewListview({super.key, required this.articles});

 final List<ArticleModel> articles;

  

  @override
  
  @override
  Widget build(BuildContext context) {
    // return isLoading? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) :
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => NewsTile(articleModel: articles[index]),
      ),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   physics: NeverScrollableScrollPhysics(),
    //     itemBuilder: (context, index) => NewsTile(),
    //     itemCount: 10,
    //   );
  }
}
