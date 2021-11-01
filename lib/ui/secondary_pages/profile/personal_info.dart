import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:melissa_pharm/ui/body_constructor.dart';
import 'package:melissa_pharm/ui/widgets/InputField.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final leftPadding = 16.0;
  String topic='sad';
  bool switcher=false;


  save() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    await shared.setBool('notification', switcher);
    if (switcher==true) {
      await FirebaseMessaging().subscribeToTopic(topic);
      print('subscribed to $topic');
    } else {
      await FirebaseMessaging().unsubscribeFromTopic(topic);
      print('unsubscribed from $topic');
    }
  }

  initSwitcher()async{
    SharedPreferences shared = await SharedPreferences.getInstance();
    if(shared.getBool('notification')!=null)
      setState(() {
        switcher =  shared.getBool('notification');

      });
  }

  @override
  void initState() {


    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
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
            CustomTextField(hintText: 'ФИО', onChanged: (e){}),
            CustomTextField(hintText: 'Дата рождения', onChanged: (e){}),
            CustomTextField(hintText: 'Телефон', onChanged: (e){}),
            CustomTextField(hintText: 'Почта', onChanged: (e){}),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 16, bottom: 16),
              child: Text('Реклама и акции', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 20),
              trailing: Container(
                width: 55,
                child: Switch(
                  activeColor: Colors.lightGreen,
                  value: switcher,
                  onChanged: (e) {
                    setState(() {
                      switcher=!switcher;
                    });
                    save();
                  },
                ),
              ),
              title: Text('Push уведомления и SMS'),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 20),
              trailing: Container(
                width: 55,
                child: Switch(
                  activeColor: Colors.lightGreen,
                  value: switcher,
                  onChanged: (e) {
                    setState(() {
                      switcher=!switcher;
                    });
                    save();
                  },
                ),
              ),
              title: Text('Эл.почта'),
            ),
          ],
        ),

    );
  }
}
