import 'package:flutter/material.dart';
import 'package:project1/widgets/category_listView.dart';

import 'package:project1/widgets/news_listview_builder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News'),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListview(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 23,
              ),
            ),
            const NewsListviewBuilder(category: 'general',),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoryListview(),
        //     SizedBox(height: 20,),
        //     Expanded(child: NewListview()),
        //   ],
        // ),
      ),
    );
  }
}
