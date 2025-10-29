import 'package:flutter/material.dart';
import 'package:news/data/models/article_model.dart';
import 'package:news/ui/common/article_item.dart';
import 'package:news/ui/common/custom_scaffold.dart';

class NewsScreen extends StatelessWidget {
  static const String routeName = '/newsScreen';

  NewsScreen({super.key});

  List<String> tabList = [
    'ABC News',
    'CNN News',
    'BBC News',
    'Aftenposten',
    'Ary News',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabList.length,
      child: CustomScaffold(
        title: "General",
        child: Column(
          children: [
            TabBar(
              tabs: tabList.map((tab) => Tab(text: tab)).toList(),
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              unselectedLabelStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: tabList.map((tab) {
                  var filteredList = Article.testArticles
                      .where((article) => article.source == tab)
                      .toList();

                  return ListView.builder(
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      var article = filteredList[index];
                      return Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [ArticleItem(article: article)],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
