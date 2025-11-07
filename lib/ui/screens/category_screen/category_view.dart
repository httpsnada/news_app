import 'package:flutter/material.dart';
import 'package:news/data/models/category_model.dart';
import 'package:news/ui/common/category_widget.dart';

typedef OnCategoryClick = void Function(CategoryModel category);

class CategoryView extends StatelessWidget {
  static const String routeName = '/categoryView';
  OnCategoryClick onCategoryClick;

  CategoryView(this.onCategoryClick, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // title: 'Home',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning", style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 2),
            Text(
              "Here is Some News For You",
              style: Theme.of(context).textTheme.titleLarge,
            ),

            SizedBox(height: 16),

            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  var category = CategoryModel.categories[index];
                  return InkWell(
                      onTap: () {
                        onCategoryClick(category);
                      },
                      child: CategoryWidget(category: category, index: index));
                },
                itemCount: CategoryModel.categories.length,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
