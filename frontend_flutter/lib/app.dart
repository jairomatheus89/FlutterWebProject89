import 'package:flutter/material.dart';
import 'screens/login/login_page.dart';
import 'screens/register/register_page.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage()
      },
    );
  }
}