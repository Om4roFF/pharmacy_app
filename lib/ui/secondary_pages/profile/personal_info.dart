import 'package:flutter/material.dart';
import 'package:pharmacy_app/ui/widgets/input_field.dart';

import '../../body_constructor.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final leftPadding = 16.0;
  String topic = 'sad';
  bool switcher = false;

  save() async {}

  initSwitcher() async {}

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      initSwitcher();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Body(
      title: 'Личные данные',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(hintText: 'ФИО', onChanged: (e) {}),
          CustomTextField(hintText: 'Дата рождения', onChanged: (e) {}),
          CustomTextField(hintText: 'Телефон', onChanged: (e) {}),
          CustomTextField(hintText: 'Почта', onChanged: (e) {}),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, top: 16, bottom: 16),
            child: Text(
              'Реклама и акции',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 20),
            trailing: SizedBox(
              width: 55,
              child: Switch(
                activeColor: Colors.lightGreen,
                value: switcher,
                onChanged: (e) {
                  setState(() {
                    switcher = !switcher;
                  });
                  save();
                },
              ),
            ),
            title: const Text('Push уведомления и SMS'),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 20),
            trailing: SizedBox(
              width: 55,
              child: Switch(
                activeColor: Colors.lightGreen,
                value: switcher,
                onChanged: (e) {
                  setState(() {
                    switcher = !switcher;
                  });
                  save();
                },
              ),
            ),
            title: const Text('Эл.почта'),
          ),
        ],
      ),
    );
  }
}
