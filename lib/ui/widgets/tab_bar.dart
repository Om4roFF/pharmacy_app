import 'package:flutter/material.dart';
import 'package:pharmacy_app/theme/styles.dart';

class CategoriesTabs extends StatelessWidget {
  const CategoriesTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: 3,
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: CustomTabBar(),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: SizedBox(
                  height: 200,
                  child: TabBarView(
                    children: [
                      Text(
                          'Шикарная линейка на основе белой ангарской глины и леофилизированного кокосового молочка SUGAR LIFE “WHITE GOLD” Абсолютно гипоаллергенный продукт уникальной консистенции. Очень пластичная и мягкая, при этом не тает и не растекается, что обеспечивает невероятное удобство ра'),
                      Icon(Icons.directions_transit),
                      Icon(Icons.directions_bike),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  final List<String> tabsName = ['Описание', 'Состав', 'Применение'];

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      onTap: (index) {},
      unselectedLabelColor: Colors.black,
      labelColor: Colors.black,
      indicatorPadding: EdgeInsets.zero,
      labelPadding: const EdgeInsets.symmetric(horizontal: 0.1),
      indicator: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
          border: Border.all(color: SugarLifeTheme.yellow, width: 2),
          color: Colors.white),
      tabs: tabsName
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(child: Text(e)),
            ),
          )
          .toList(),
    );
  }
}
