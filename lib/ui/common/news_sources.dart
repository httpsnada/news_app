import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/api/model/responses/sources/Sources.dart';
import 'package:news/ui/common/article_list.dart';

class NewsSources extends StatefulWidget {
  List<Source> tabs;

  NewsSources({super.key, required this.tabs});

  @override
  State<NewsSources> createState() => _NewsSourcesState();
}

class _NewsSourcesState extends State<NewsSources> {
  int selectedIndex = 0;

  @override
  build(BuildContext context) {
    return DefaultTabController(
      length: widget.tabs.length,
      child: Column(
        children: [
          TabBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            tabs: widget.tabs.map((source) => Tab(text: source.name)).toList(),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            unselectedLabelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: ApiManager.getInstance().getArticles(
                widget.tabs[selectedIndex].id ?? "",
              ),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text("Error"));
                }
                var response = snapshot.data;
                return ArticleList(articles: response?.articles ?? []);
              },
            ),
          ),
        ],
      ),
    );
  }
}
