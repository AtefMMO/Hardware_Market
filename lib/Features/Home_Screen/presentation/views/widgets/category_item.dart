import 'package:flutter/material.dart';
import 'package:hardware_market/Core/App_Theme/app_theme.dart';

class CategoryItem extends StatelessWidget {
  String categoryName;
  String categoryImage;
  CategoryItem(
      {super.key, required this.categoryName, required this.categoryImage});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              categoryImage,
              fit: BoxFit.cover,
            ),
            Text(categoryName,style:Theme.of(context).textTheme.bodySmall,)
          ],
        ));
  }
}
