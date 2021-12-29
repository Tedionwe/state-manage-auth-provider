import 'package:firebase_auth_with_provider/screens/signup.dart';
import 'package:firebase_auth_with_provider/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  static const String route = 'Login';
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Login'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
         Padding(padding: const EdgeInsets.all(8),
         child: TextField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: 'Email'
          ),
         ),
         ),

          Padding(padding: const EdgeInsets.all(8),
         child: TextField(
          controller: passwordController,
          decoration: const InputDecoration(
            labelText: 'Password'
          ),
         ),
         ),
         ElevatedButton(
              onPressed: (){
             authService.signInWithEmailAndPassword(
               emailController.text, passwordController.text);
              },
              child: Text('LogIn'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed(SignUp.route);
              },
              child: Text('SignUp'),
            ),
      ],),
    );
  }
}