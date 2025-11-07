import 'package:flutter/material.dart';
import 'package:news/data/models/category_model.dart';
import 'package:news/ui/common/custom_scaffold.dart';
import 'package:news/ui/screens/category_details/category_details.dart';
import 'package:news/ui/screens/category_screen/category_view.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CategoryModel? category;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      onHomeClick,
      title: category == null ? 'Home' : category?.title ?? "",
      body: category == null
          ? CategoryView(onCategoryClick)
          : CategoryDetails(category!),
    );
  }

  void onCategoryClick(CategoryModel category) {
    setState(() {
      this.category = category;
    });
  }

  void onHomeClick() {
    setState(() {
      this.category = null;
    });
  }
}
