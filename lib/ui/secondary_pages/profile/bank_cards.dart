import 'package:flutter/material.dart';
import 'package:pharmacy_app/ui/widgets/buttons/outlined_green_button.dart';

import '../../body_constructor.dart';

class MyCards extends StatelessWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body(
      title: 'Банковские карты',
      child: Column(
        children: [
          ListTile(
            leading: Checkbox(
              value: false,
              onChanged: (bool? value) {},
            ),
            title: Row(
              children: [
                Image.asset('assets/visa.png'),
                const Text('123456*****789')
              ],
            ),
            trailing: const Icon(Icons.settings_applications_sharp),
          ),
          OutlinedActionButton(label: 'Добавить карту', onPressed: () {})
        ],
      ),
    );
  }
}
