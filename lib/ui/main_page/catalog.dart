import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
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
              children: [
                Text('По популяроности'),
                Text('Фильтровать'),
              ],
            ),
          ),
          Container(
              width: w,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // crossAxisSpacing: 8,
                    // mainAxisSpacing: 24,
                    childAspectRatio: (w / 2 - 20) / 285,
                    crossAxisCount: 2),
                itemBuilder: (context, i) {
                  return Product();
                },
                itemCount: 6,
                physics: NeverScrollableScrollPhysics(),
              ))
        ],
      ),
    );
  }
}

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
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
              Text('asfsaf'),
              Text('price'),
              OutlinedActionButton(label: '1220', onPressed: () {})
            ],
          )
        ],
      ),
    );
  }
}
