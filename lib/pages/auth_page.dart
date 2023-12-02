import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login/pages/home_pages.dart';
// import 'package:firebase_login/pages/login_page.dart';
import 'package:firebase_login/pages/loginorregister_pages.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // User Log in
          if (snapshot.hasData) {
            return HomePage();
          }
          // User not logged in
          else {
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
