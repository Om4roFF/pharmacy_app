import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class SugarLifeTheme {
  static TextStyle bigStyle = const TextStyle(
      fontFamily: 'Bebas Neue', fontSize: 30, fontWeight: FontWeight.w700);
  static TextStyle regular = const TextStyle(
    fontFamily: 'Lato',
    fontSize: 15,
    fontWeight: FontWeight.w300,
  );
  static TextStyle regularBold = const TextStyle(
    fontFamily: 'Lato',
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static TextStyle whiteText = const TextStyle(
      fontFamily: 'Avanti',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white);
  static TextStyle buttonStyle = const TextStyle(
      fontFamily: 'Avanti', fontSize: 14, fontWeight: FontWeight.w400);
  static Color grey = const Color(0xFFE8F5E2);
  static Color yellow = const Color(0xFFFFE24B);

  static Color green = const Color(0xFF59B439);
}

class LoadingCircle extends StatelessWidget {
  final Color color;

  const LoadingCircle({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}
