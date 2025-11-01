import 'package:news/ui/design/design.dart';

class CategoryModel {
  final String? lightImage;
  final String? darkImage;
  final String? title;
  final String? id;

  CategoryModel({this.lightImage, this.darkImage, this.title, this.id});

  static List<CategoryModel> categories = [
    CategoryModel(
        title: 'General', lightImage: AppImages.general, id: "general"),
    CategoryModel(
        title: 'Business', lightImage: AppImages.business, id: "business"),
    CategoryModel(
        title: 'Entertainment', lightImage: AppImages.fun, id: "entertainment"),
    CategoryModel(title: 'Health', lightImage: AppImages.health, id: "health"),
    CategoryModel(
        title: 'Science', lightImage: AppImages.science, id: "science"),
    CategoryModel(
        title: 'Technology', lightImage: AppImages.tech, id: "technology"),
    CategoryModel(title: 'Sports', lightImage: AppImages.sports, id: "sports"),
  ];
}
