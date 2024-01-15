import 'package:flutter/material.dart';

import '../components/news_article_card.dart';
import '../model/news_article.dart';

class NewsFeed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? _buildPortraitLayout()
              : _buildLandscapeLayout();
        },
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return NewsArticleCard(article: articles[index]);
      },
    );
  }

  Widget _buildLandscapeLayout() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return NewsArticleCard(article: articles[index]);
      },
    );
  }
}