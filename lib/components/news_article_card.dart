import 'package:flutter/material.dart';

import '../model/news_article.dart';

class NewsArticleCard extends StatelessWidget {
  final NewsArticle article;

  const NewsArticleCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12.0)),
        child: Image.network(
          article.thumbnail,
          width: double.infinity,
          height: 120.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
