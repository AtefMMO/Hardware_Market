import 'package:flutter/material.dart';
import 'package:hardware_market/Features/Order_Screen/presentation/views/widgets/order_item.dart';

class OrdersColumn extends StatelessWidget {
  const OrdersColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(itemBuilder: (context, index) {
        return const OrderItem();
      },itemCount: 10, separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
      ),
    );
  }
}
