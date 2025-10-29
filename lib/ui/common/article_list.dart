import 'package:flutter/material.dart';
import 'package:news/api/model/responses/articles/Articles.dart';
import 'package:news/ui/common/article_item.dart';

class ArticleList extends StatelessWidget {
  List<Article> articles;

  ArticleList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        var article = articles[index];
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(children: [ArticleItem(article: article)]),
        );
      },
    );
  }
}
