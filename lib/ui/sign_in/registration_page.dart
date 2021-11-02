

import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 100),
              child: Image.asset('assets/logo_min.png'),
            ),
            const Text(
              'Save your precious time',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Email',
                    contentPadding: EdgeInsets.all(8),
                    hintStyle: TextStyle(color: Colors.black87, fontSize: 14)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.all(8),
                    hintStyle: TextStyle(color: Colors.black87, fontSize: 14)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.all(8),
                    hintStyle: TextStyle(color: Colors.black87, fontSize: 14)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextButton(
                onPressed: null,
                child: const Text(
                  'Enter',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 44),
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextButton(
            child: const Text('Sign In'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
    );
  }
}
