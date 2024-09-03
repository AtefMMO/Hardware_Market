import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardware_market/Core/widgets/add_to_cart_button.dart';

import '../../../../../Core/App_Theme/app_theme.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.r),
              bottomRight: Radius.circular(15.r)),
          color: AppTheme.offWhite),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/1.jpg',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10.h),
          const Text(
            'Rtx 3080',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(height: 10.h),
          const Text('300\$'),
          AddToCartButton(
              text: "add to cart",
              onPressed: () {},
              color: AppTheme.primaryColor,
              textColor: AppTheme.secondaryColor)
        ],
      ),
    );
  }
}
