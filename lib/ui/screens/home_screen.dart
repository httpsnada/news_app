import 'package:flutter/material.dart';
import 'package:news/data/models/category_model.dart';
import 'package:news/ui/common/category_widget.dart';
import 'package:news/ui/common/custom_scaffold.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/homeScreen';

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Home',
      child: Padding(
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
                  return CategoryWidget(category: category, index: index);
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
