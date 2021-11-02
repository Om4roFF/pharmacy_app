import 'package:flutter/material.dart';
import 'package:pharmacy_app/ui/widgets/buttons/outlined_green_button.dart';

import '../../body_constructor.dart';

class MyAddresses extends StatelessWidget {
  const MyAddresses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body(
      title: 'Мои адреса',
      child: Column(
        children: [
          ListTile(
            leading: Checkbox(
              value: false,
              onChanged: (bool? value) {},
            ),
            title: const Text('Алматы'),
            trailing: const Icon(Icons.settings_applications_sharp),
          ),
          ListTile(
            leading: Checkbox(
              value: false,
              onChanged: (bool? value) {},
            ),
            title: const Text('Алматы'),
            trailing: const Icon(Icons.settings_applications_sharp),
          ),
          OutlinedActionButton(label: 'Добавить адрес', onPressed: () {})
        ],
      ),
    );
  }
}
