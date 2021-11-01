import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:melissa_pharm/ui/_scaffold_bars/bars.dart';
import 'package:melissa_pharm/ui/secondary_pages/cart_page.dart';
import 'package:melissa_pharm/ui/widgets/categories_tab.dart';

class HomePage extends StatelessWidget {
  final TextStyle newStyle = TextStyle(fontWeight: FontWeight.w900,fontSize: 22,letterSpacing: 0.75, color: Color(0xff3F414E));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        // leading: Icon(Icons.menu_outlined),
        title: Container(
            height: 46,
            child: Image.asset('assets/logo.png')),
        centerTitle: true,
        actions: [GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
            },
            child: Padding(
              padding: EdgeInsets.only(right: 14, top: 2),
              child: Center(
                child: Badge(
                    badgeColor: Colors.black,
                    badgeContent: Row(
                      children: [
                        Text('0',
                          style: TextStyle(color: Colors.white, ),textAlign: TextAlign.start,),
                      ],
                    ),
                    child: Icon(Icons.shopping_cart_outlined) ),
              ),
            ),
          )
        ],
      ),
      drawer: DrawerCustom(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
            child: Column(
              children: [
                CategoryTab(),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text('Товары',style: newStyle,),
                      SizedBox(width: 28,),
                      Text('Бренды',style: newStyle.copyWith(color: Color(0xffA1A4B2))),


                    ],
                  ),
                ),
                Image.asset('assets/main.png', fit: BoxFit.fitWidth,),
              ],
            )),
      ),
    );
  }
}
