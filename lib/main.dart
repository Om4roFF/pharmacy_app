import 'package:flutter/material.dart';
import 'package:pharmacy_app/ui/main_page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'SF',
        backgroundColor: Colors.transparent,
        canvasColor: Colors.white,
        // accentColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: 'Melissa pharmacy',
      home: HomePage(),
    );
  }
}
