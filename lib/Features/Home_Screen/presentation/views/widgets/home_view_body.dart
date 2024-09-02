import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardware_market/Features/Home_Screen/presentation/views/widgets/address_bar.dart';
import 'package:hardware_market/Features/Home_Screen/presentation/views/widgets/carousel_slider_item.dart';
import 'package:hardware_market/Features/Home_Screen/presentation/views/widgets/category_row.dart';
import 'package:hardware_market/Features/Home_Screen/presentation/views/widgets/search_bar_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AddressBar(),
              Icon(
                Icons.shopping_cart_outlined,
                size: 30.r,
              ),
            ],
          ),
          const SearchBarItem(),
          const CarouselSliderItem(),
          const CategoryRow()
        ],
      ),
    );
  }
}
