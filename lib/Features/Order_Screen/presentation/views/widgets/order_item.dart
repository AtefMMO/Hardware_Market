import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/App_Theme/app_theme.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: AppTheme.offWhite,
      child: Row(
        children: [
          Container(
            height: 50.h,
            width: 50.w,
            margin: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/2.jpg',
              fit: BoxFit.cover,
            ),
          ),
           Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('#23423',style:Theme.of(context).textTheme.bodyMedium),
              Text('200\$',style:Theme.of(context).textTheme.bodyMedium),
              Text('Expected delivery date 7/27/2025',style:Theme.of(context).textTheme.bodySmall),
            ],
          )
        ],
      ),
    );
  }
}
