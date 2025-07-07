import 'package:flutter/material.dart';
import 'fixed_app_bar.dart';
import 'fixed_footer.dart';
import './screens/home/home_screen.dart';
import './screens/register/register_screen.dart';
import './screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}



class MyAppState extends State<MyApp>{

  Widget _currentbody = const HomeScreen();

  void changetoRegister(Widget newBody) {
    setState(() {
      _currentbody = RegisterScreen();
    });
  }

  void changetoLogin(Widget newBody) {
    setState(() {
      _currentbody = LoginScreen();
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: FixedAppBar(),
        body: _currentbody,
        bottomNavigationBar: FixedFooter(),
      )
    );
  }


  static MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>();
}