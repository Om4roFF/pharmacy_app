import 'package:flutter/material.dart';
import 'package:melissa_pharm/ui/body_constructor.dart';
import 'package:melissa_pharm/ui/widgets/buttons/outlined_green_button.dart';

class MyCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      title: 'Банковские карты',
      child: Column(
        children: [
          ListTile(
            leading: Checkbox(
              value: false,
            ),
            title: Row(
              children: [
                Image.asset('assets/visa.png'),
                Text('123456*****789')
              ],
            ),
            trailing: Icon(Icons.settings_applications_sharp),
          ),
          OutlinedActionButton(label: 'Добавить карту', onPressed: (){})
        ],
      ),
    );
  }
}
