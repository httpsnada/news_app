import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/ui/common/custom_scaffold.dart';
import 'package:news/ui/common/news_sources.dart';

class NewsScreen extends StatelessWidget {
  static const String routeName = '/newsScreen';

  NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        title: "Sports",
        child: FutureBuilder(
            future: ApiManager.getInstance().getNewsSources("sports"),
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
