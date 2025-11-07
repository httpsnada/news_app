import 'package:flutter/material.dart';
import 'package:news/api/model/responses/sources/Sources.dart';
import 'package:news/ui/common/news_sources_tabs_viewModel.dart';
import 'package:provider/provider.dart';

import 'article_list.dart';

class NewsSourcesTabsView extends StatelessWidget {
  Source source;

  late NewsSourcesTabsViewModel vm;

  NewsSourcesTabsView({required this.source}) {
    vm = NewsSourcesTabsViewModel();
    vm.getArticleBySourceId(source.id ?? " ");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider.value(
      value: vm,
      child: Consumer<NewsSourcesTabsViewModel>(
        builder: (context, viewModel, child) {
          var screenState = viewModel.state;
          switch (screenState.state) {
            case ScreenStates.initial:
            case ScreenStates.Loading:
              {
                return Center(child: CircularProgressIndicator());
              }
            case ScreenStates.Error:
              {
                return Center(child: Text(screenState.errorMessage ?? "Error"));
              }
            case ScreenStates.Success:
              {
                return ArticleList(articles: screenState.articles ?? []);
              }
          }
        },
      ),
    );
  }
}

//          return Center(child: CircularProgressIndicator());
//          return Center(child: Text("Error"));
//        return ArticleList(articles: response?.articles ?? []);
