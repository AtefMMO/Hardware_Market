import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hardware_market/Features/Home_Screen/presentation/views/widgets/product_item.dart';

class ProductsColumn extends StatelessWidget {
  const ProductsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.85),
          itemBuilder: (context, index) {
            return const ProductItem();
          }),
    );
  }
}
