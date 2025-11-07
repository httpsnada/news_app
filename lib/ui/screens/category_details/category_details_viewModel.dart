import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/api/model/responses/sources/Sources.dart';

class CategoryDetailsViewModel extends ChangeNotifier {
  // call api
  // handle state for view    using provider
  CategoryDetailsState state = CategoryDetailsState();

  void getNewsSources(String categoryId) async {
    try {
      // call api
      var response = await ApiManager.getInstance().getNewsSources(categoryId);
      _sendState(
        CategoryDetailsState(
          state: ScreenStates.Loading,
          loadingMessage: "Please Wait ...",
        ),
      );

      if (response.status == 'ok') {
        _sendState(
          CategoryDetailsState(
            state: ScreenStates.Success,
            sources: response.sources,
          ),
        );
      } else {
        _sendState(
          CategoryDetailsState(
            state: ScreenStates.Error,
            errorMessage: response.message,
          ),
        );
      }
    } catch (e) {
      _sendState(
        CategoryDetailsState(
          state: ScreenStates.Error,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void _sendState(CategoryDetailsState newState) {
    state = newState;
    notifyListeners();
  }
}

class CategoryDetailsState {
  ScreenStates state = ScreenStates.initial;
  List<Source>? sources;

  // in case of error
  String? errorMessage;
  String? loadingMessage;

  CategoryDetailsState({
    this.state = ScreenStates.initial,
    this.sources,
    this.errorMessage,
    this.loadingMessage,
  });
}

enum ScreenStates { initial, Loading, Success, Error }
