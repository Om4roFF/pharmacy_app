import 'package:flutter/material.dart';
import 'package:melissa_pharm/ui/body_constructor.dart';
import 'package:melissa_pharm/ui/widgets/buttons/action_button.dart';
import 'package:melissa_pharm/ui/widgets/buttons/outlined_green_button.dart';

class MyAddresses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      title: 'Мои адреса',
      child: Column(
        children: [
          ListTile(
            leading: Checkbox(
              value: false,
            ),
            title: Text('Алматы'),
            trailing: Icon(Icons.settings_applications_sharp),
          ),
          ListTile(
            leading: Checkbox(
              value: false,
            ),
            title: Text('Алматы'),
            trailing: Icon(Icons.settings_applications_sharp),
          ),
          OutlinedActionButton(
              label: 'Добавить адрес',
              onPressed: (){

          })
        ],
      ),
    );
  }
}
