import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardware_market/Features/Order_Screen/presentation/views/widgets/orders_column.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Text('Orders',style: Theme.of(context).textTheme.bodyLarge,),
          const OrdersColumn()
        ],
      ),
    );
  }
}
