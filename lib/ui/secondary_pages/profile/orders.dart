import 'package:flutter/material.dart';
import 'package:pharmacy_app/ui/widgets/product_container_variations/cart_item.dart';

import '../../body_constructor.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body(
      title: 'Мои заказы',
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
            },
            child: const CartItem(),
          );
        },
        itemCount: 5,
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}
