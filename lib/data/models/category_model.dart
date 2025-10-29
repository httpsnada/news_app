import 'package:news/ui/design/design.dart';

class CategoryModel {
  final String? lightImage;

  final String? darkImage;

  final String? title;

  CategoryModel({this.lightImage, this.darkImage, this.title});

  static List<CategoryModel> categories = [
    CategoryModel(title: 'General', lightImage: AppImages.general),
    CategoryModel(title: 'Business', lightImage: AppImages.business),
    CategoryModel(title: 'Entertainment', lightImage: AppImages.fun),
    CategoryModel(title: 'Health', lightImage: AppImages.health),
    CategoryModel(title: 'Science', lightImage: AppImages.science),
    CategoryModel(title: 'Technology', lightImage: AppImages.tech),
    CategoryModel(title: 'Sports', lightImage: AppImages.sports),
  ];
}
