import 'package:flutter/material.dart';
import 'package:melissa_pharm/ui/_scaffold_bars/bars.dart';
import 'package:melissa_pharm/ui/widgets/buttons/action_button.dart';
import 'package:melissa_pharm/ui/widgets/product_container_variations/cart_item.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(title: 'Корзина'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
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
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
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
