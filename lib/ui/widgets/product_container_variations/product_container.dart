import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/theme/styles.dart';

class ProductContainer extends StatelessWidget {
  final bool hasDiscount;

  const ProductContainer({Key? key, this.hasDiscount = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                const SizedBox(height: 12),
                Container(
                  height: 140,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/product.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 4),
                      child: Container(
                        child: Text(
                          'Паста для шугаринга SugarLife Плотная, 200 г',
                          softWrap: true,
                          maxLines: 3,
                          style: SugarLifeTheme.regular,
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '140 00 Т',
                            style: SugarLifeTheme.regularBold,
                          ),
                          // ignore: prefer_const_constructors
                          if (hasDiscount == true)
                            const Icon(Icons.arrow_forward_sharp)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 8,
              left: 12,
              child: LikeButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class BigSizeContainer extends StatelessWidget {
  const BigSizeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                const SizedBox(height: 12),
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/product.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 4),
                      child: SizedBox(
                        width: 220,
                        child: Text(
                          'Паста для шугаринга SugarLife Плотная, 200 г',
                          softWrap: true,
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: SugarLifeTheme.regular,
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                ),
                SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '140 000 Т',
                            style: SugarLifeTheme.regularBold,
                          ),
                          const Text('В наличии')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(top: 8, left: 12, child: LikeButton()),
          ],
        ),
      ),
    );
  }
}

class LikeButton extends StatelessWidget {
  final int? id;
  const LikeButton({
    Key? key,
    this.id,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Icon(
        Icons.favorite_border,
        color: Colors.red,
        size: 30,
      ),
    );
  }
}
