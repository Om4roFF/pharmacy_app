import 'package:flutter/material.dart';
import 'package:pharmacy_app/ui/widgets/buttons/outlined_green_button.dart';

import '../body_constructor.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Body(
      title: 'Лекарственные препараты',
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('По популяроности'),
                Text('Фильтровать'),
              ],
            ),
          ),
          SizedBox(
            width: w,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // crossAxisSpacing: 8,
                  // mainAxisSpacing: 24,
                  childAspectRatio: (w / 2 - 20) / 285,
                  crossAxisCount: 2),
              itemBuilder: (context, i) {
                return const Product();
              },
              itemCount: 6,
              physics: const NeverScrollableScrollPhysics(),
            ),
          )
        ],
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        // border: Border.all(color: theme.primaryColor),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset('assets/product.png'),
              const Text('asfsaf'),
              const Text('price'),
              OutlinedActionButton(label: '1220', onPressed: () {})
            ],
          )
        ],
      ),
    );
  }
}
