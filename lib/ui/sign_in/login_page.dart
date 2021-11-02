import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pharmacy_app/services/shared_prefs_funcs.dart';
import 'package:pharmacy_app/services/user_service.dart';
import 'package:pharmacy_app/ui/sign_in/registration_page.dart';
import 'package:provider/provider.dart';
import 'package:pharmacy_app/ui/providers/authorization_provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController _login = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
                controller: _login,
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
                controller: _password,
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
              padding: const EdgeInsets.only(right: 15),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forgot your password?'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextButton(
                onPressed: () => _simpleSignIn(context),
                child: context.watch<AuthorizationProvider>().isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : const Text(
                        'Enter',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 44),
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GoogleAuthButton(onPressed: () => _googleSignIn(context)),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextButton(
            child: const Text('Registration'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegistrationPage(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _googleSignIn(BuildContext context) async {
    var userService = GetIt.I<UserService>();
    context.read<AuthorizationProvider>().setLoading(true);
    final res = await userService.signInWithGoogle();
    if (res.isNotEmpty) {
      SharedPrefService().setClientToken(token: res);
      context.read<AuthorizationProvider>().setSign(true);
      context.read<AuthorizationProvider>().setLoading(false);
    } else {
      context.read<AuthorizationProvider>().setSign(false);
      context.read<AuthorizationProvider>().setLoading(false);
    }
  }

  void _simpleSignIn(BuildContext context) async {
    var userService = GetIt.I<UserService>();
    context.read<AuthorizationProvider>().setLoading(true);
    final res =
        await userService.signInWithPassword(_login.text, _password.text);
    if (res.isNotEmpty) {
      SharedPrefService().setClientToken(token: res);
      context.read<AuthorizationProvider>().setSign(true);
      context.read<AuthorizationProvider>().setLoading(false);
    } else {
      context.read<AuthorizationProvider>().setSign(false);
      context.read<AuthorizationProvider>().setLoading(false);
    }
  }
}
