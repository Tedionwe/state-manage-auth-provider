import 'package:firebase_auth_with_provider/screens/signup.dart';
import 'package:firebase_auth_with_provider/services/auth_services.dart';
import 'package:firebase_auth_with_provider/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home.dart';
import 'screens/login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_)=>AuthService())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: HomePage.route,
        routes: {
          HomePage.route: (context)=> Wrapper(),
          Login.route:(context)=>const Login(),
          SignUp.route:(context)=>const SignUp()
        }
      ),
    );
  }
}

