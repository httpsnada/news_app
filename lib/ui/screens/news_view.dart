import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/data/models/category_model.dart';
import 'package:news/ui/common/news_sources.dart';

class NewsView extends StatelessWidget {
  static const String routeName = '/newsView';
  CategoryModel category;

  NewsView(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //title: category.title ?? " ",
        body: FutureBuilder(
            future: ApiManager.getInstance().getNewsSources(category.id ?? " "),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text("Error"));
              }
              var response = snapshot.data;
              return NewsSources(tabs: response?.sources ?? []);
            })
    );
  }
}
