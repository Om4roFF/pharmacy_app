import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pharmacy_app/services/shared_prefs_funcs.dart';
import 'package:pharmacy_app/services/user_service.dart';
import 'package:pharmacy_app/ui/_scaffold_bars/bars.dart';
import 'package:pharmacy_app/ui/providers/authorization_provider.dart';
import 'package:pharmacy_app/ui/secondary_pages/profile/bank_cards.dart';
import 'package:pharmacy_app/ui/secondary_pages/profile/my_addresses.dart';
import 'package:pharmacy_app/ui/secondary_pages/profile/orders.dart';
import 'package:pharmacy_app/ui/secondary_pages/profile/personal_info.dart';
import 'package:provider/provider.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Мой профиль',
      ),
      body: Column(
        children: [
          StyledTile(
            icon: Icons.person_pin_outlined,
            text: 'Личные данные',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PersonalInfo(),
                ),
              );
            },
          ),
          StyledTile(
            icon: Icons.list,
            text: 'Заказы',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyOrders(),
                ),
              );
            },
          ),
          StyledTile(
            icon: Icons.location_on_outlined,
            text: 'Мои адреса',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyAddresses(),
                ),
              );
            },
          ),
          StyledTile(
            icon: Icons.credit_card,
            text: 'Банковские карты',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyCards(),
                ),
              );
            },
          ),
          StyledTile(
            icon: Icons.power_settings_new_outlined,
            text: 'Выйти из профиля',
            onTap: () {
              context.read<AuthorizationProvider>().setSign(false);
              SharedPrefService().setClientToken();
              var userService = GetIt.I<UserService>();
              userService.signOutGoogle();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
