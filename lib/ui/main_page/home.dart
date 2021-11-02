import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/ui/_scaffold_bars/bars.dart';
import 'package:pharmacy_app/ui/secondary_pages/cart_page.dart';
import 'package:pharmacy_app/ui/widgets/categories_tab.dart';

class HomePage extends StatelessWidget {
  final TextStyle newStyle = const TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 22,
      letterSpacing: 0.75,
      color: Color(0xff3F414E));

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Image.asset('assets/logo_min.png'),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 14, top: 2),
              child: Center(
                child: Badge(
                    badgeColor: Colors.black,
                    badgeContent: Row(
                      children: const [
                        Text(
                          '0',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    child: const Icon(Icons.shopping_cart_outlined)),
              ),
            ),
          )
        ],
      ),
      drawer: const DrawerCustom(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CategoryTab(),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      'Товары',
                      style: newStyle,
                    ),
                    const SizedBox(
                      width: 28,
                    ),
                    Text('Бренды',
                        style:
                            newStyle.copyWith(color: const Color(0xffA1A4B2))),
                  ],
                ),
              ),
              Image.asset(
                'assets/main.png',
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
