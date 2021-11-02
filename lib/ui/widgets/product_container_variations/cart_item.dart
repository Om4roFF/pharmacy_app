import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/theme/styles.dart';

class CartItem extends StatelessWidget {
  static BoxDecoration decoration = BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        blurRadius: 4,
        spreadRadius: 3,
        offset: const Offset(0, 0), // changes position of shadow
      ),
    ],
  );

  const CartItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 118.0,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: decoration,
          child: Row(
            children: [
              Flex(
                direction: Axis.horizontal,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/product.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Фервекс Плотная, 200 г',
                          softWrap: true,
                          maxLines: 3,
                          style:
                              SugarLifeTheme.regular.copyWith(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1 200 Т',
                              style: SugarLifeTheme.regularBold,
                            ),
                            const Icon(Icons.arrow_forward),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
