import 'package:flutter/material.dart';
import 'package:news/api/model/responses/articles/Articles.dart';

import '../../api/api_manager.dart';

class NewsSourcesTabsViewModel extends ChangeNotifier {
  // call api
  // handle state for view    using provider
  NewsListState state = NewsListState();

  void getArticleBySourceId(String sourceId) async {
    try {
      // call api
      var response = await ApiManager.getInstance().getArticles(sourceId);
      _sendState(
        NewsListState(
          state: ScreenStates.Loading,
          loadingMessage: "Please Wait ...",
        ),
      );

      if (response.status == 'ok') {
        _sendState(
          NewsListState(
            state: ScreenStates.Success,
            articles: response.articles,
          ),
        );
      } else {
        _sendState(
          NewsListState(
            state: ScreenStates.Error,
            errorMessage: response.message,
          ),
        );
      }
    } catch (e) {
      _sendState(
        NewsListState(state: ScreenStates.Error, errorMessage: e.toString()),
      );
    }
  }

  void _sendState(NewsListState newState) {
    state = newState;
    notifyListeners();
  }
}

class NewsListState {
  ScreenStates state = ScreenStates.initial;
  List<Article>? articles;

  // in case of error
  String? errorMessage;
  String? loadingMessage;

  NewsListState({
    this.state = ScreenStates.initial,
    this.articles,
    this.errorMessage,
    this.loadingMessage,
  });
}

enum ScreenStates { initial, Loading, Success, Error }
