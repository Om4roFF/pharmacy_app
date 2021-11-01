import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Мой профиль',),
      body: Column(
        children: [
          StyledTile(icon: Icons.person_pin_outlined, text: 'Личные данные',
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalInfo()));
          },
          ),
          StyledTile(icon: Icons.list, text: 'Заказы',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOrders()));
            },),
          StyledTile(icon: Icons.location_on_outlined, text: 'Мои адреса',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAddresses()));
            },),
          StyledTile(icon: Icons.credit_card, text: 'Банковские карты',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCards()));
            },),
          StyledTile(icon: Icons.power_settings_new_outlined, text: 'Выйти из профиля',
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalInfo()));
            },),
        ],
      ),
    );
  }
}
