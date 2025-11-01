import 'package:flutter/material.dart';
import 'package:news/data/models/category_model.dart';
import 'package:news/ui/design/design.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.category,
    required this.index,
  });

  final CategoryModel category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: index.isEven ? Alignment.bottomRight : Alignment.bottomLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(
            category.lightImage ?? "",
            fit: BoxFit.cover,
            height: 200,
          ),
        ),

        Container(
          width: 160,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.light.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(84),
          ),
          child: index.isEven
              ? Row(
                  children: [
                    Text("View All"),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: AppColors.light,
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppColors.dark,
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.light,
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: AppColors.dark,
                      ),
                    ),
                    Spacer(),
                    Text("View All"),
                  ],
                ),
        ),
      ],
    );
  }
}
