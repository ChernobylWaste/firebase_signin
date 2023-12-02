import 'package:firebase_login/components/my_button.dart';
import 'package:firebase_login/components/my_textfield.dart';
import 'package:firebase_login/components/squaretile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Text Editing Controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),

              // Icon lock
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(
                height: 50,
              ),

              // Text
              Text(
                "Welcome",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              const SizedBox(
                height: 25,
              ),

              // Username
              MyTextfield(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(
                height: 10,
              ),

              // Password
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 10,
              ),

              // Forgot Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // Sign in button
              MyButton(onTap: signUserIn),

              const SizedBox(
                height: 50,
              ),

              // or Continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or Continue With',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade400,
                    ))
                  ],
                ),
              ),

              const SizedBox(
                height: 50,
              ),

              // Google Button
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SquareTile(imagePath: 'assets/google.png')],
              ),

              const SizedBox(
                height: 30,
              ),

              // Not a member
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a Member?',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      )),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Register Now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
