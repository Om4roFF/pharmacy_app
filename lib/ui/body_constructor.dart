import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final String title;
  final Widget child;

  const Body({Key? key, required this.title, required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: child),
    );
  }
}
