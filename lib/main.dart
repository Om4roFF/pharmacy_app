import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pharmacy_app/services/shared_prefs_funcs.dart';
import 'package:pharmacy_app/ui/main_page/home.dart';
import 'package:pharmacy_app/ui/providers/authorization_provider.dart';
import 'package:pharmacy_app/ui/sign_in/login_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dependencies/dependency.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setup();
  final isSigned = await SharedPrefService().getClientToken;
  runApp(
    ChangeNotifierProvider(
      create: (context) =>
          AuthorizationProvider(isSigned != null ? true : false),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthorizationProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.white,
            fontFamily: 'SF',
            backgroundColor: Colors.white,
            canvasColor: Colors.white,
            scaffoldBackgroundColor: Colors.white,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
            ),
          ),
          title: 'Bolat Pharmacy',
          home: value.isSigned ? const HomePage() : LoginPage(),
        );
      },
    );
  }
}
