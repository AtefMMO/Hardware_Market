import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardware_market/Features/Home_Screen/presentation/views/widgets/category_item.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 80.h,
      child: ListView.builder(itemBuilder: (context, index) {
        return CategoryItem(
          categoryImage: 'assets/images/1.jpg',
          categoryName: 'mouse',
        );
      },itemCount: 20,scrollDirection: Axis.horizontal,),
    );
  }
}





