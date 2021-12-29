import 'package:flutter/material.dart';

import 'login.dart';

class HomePage extends StatelessWidget {
  static const String route = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Welcome to the home screen'),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed(Login.route);
              },
              child: Text('Logout'),
            ),
          )
        ],),
      ),
    );
  }
}