import 'package:flutter/material.dart';
import 'package:project1/models/category_model.dart';

import 'category_card.dart';

class CategoryListview extends StatelessWidget {
  CategoryListview({super.key});
  final List<CategoryModel> categories = [
    CategoryModel(image: 'images/technology.jpeg', name: 'Technology'),
    CategoryModel(image: 'images/health.avif', name: 'Health'),
    CategoryModel(image: 'images/science.avif', name: 'Science'),
    CategoryModel(image: 'images/entertaiment.avif', name: 'Entertainment'),
    CategoryModel(image: 'images/sports.avif', name: 'Sports'),
    CategoryModel(image: 'images/general.avif', name: 'Business'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryCard(category:categories[index]),
      ),
    );
  }
}
