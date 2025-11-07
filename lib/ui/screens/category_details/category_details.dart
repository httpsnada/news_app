import 'package:flutter/material.dart';
import 'package:news/data/models/category_model.dart';
import 'package:news/ui/common/news_sources.dart';
import 'package:news/ui/screens/category_details/category_details_viewModel.dart';
import 'package:provider/provider.dart';

class CategoryDetails extends StatelessWidget {
  static const String routeName = '/newsView';
  CategoryModel category;
  CategoryDetailsViewModel vm = CategoryDetailsViewModel();

  CategoryDetails(this.category, {super.key}) {
    vm.getNewsSources(category.id ?? " ");
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => vm,
      child: Scaffold(
        //title: category.title ?? " ",
        body: Consumer<CategoryDetailsViewModel>(
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
                  return Center(
                    child: Text(screenState.errorMessage ?? "Error"),
                  );
                }
              case ScreenStates.Success:
                {
                  return NewsSources(tabs: screenState.sources ?? []);
                }
            }
          },
        ),
      ),
    );
  }
}

//                  return Center(child: CircularProgressIndicator());

//                  return Center(child: Text("Error"));

//                return NewsSources(tabs: response?.sources ?? []);
