import 'package:flutter/material.dart';
import 'package:melissa_pharm/ui/body_constructor.dart';
import 'package:melissa_pharm/ui/widgets/product_container_variations/cart_item.dart';

class MyOrders extends StatelessWidget {
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
            child: CartItem(),
          );
        },
        itemCount: 5,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
