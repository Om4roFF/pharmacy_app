import 'package:flutter/material.dart';
import 'package:pharmacy_app/ui/_scaffold_bars/bars.dart';
import 'package:pharmacy_app/ui/widgets/buttons/action_button.dart';
import 'package:pharmacy_app/ui/widgets/product_container_variations/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: const CustomAppBar(title: 'Корзина',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
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
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
        child: ActionButton(
          padding: EdgeInsets.zero,
          label: 'Оформить заказ',
          onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalOrderPage()));
          },
          backgroundColor: Colors.transparent,),
      ),
    );
  }
}
