import 'package:flutter/material.dart';
import 'fixed_app_bar.dart';
import 'fixed_footer.dart';
import './screens/home/home_screen.dart';
import './screens/register/register_screen.dart';
import './screens/login/login_screen.dart';
import './screens/widget/sucessFloatingButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp>{


  var _floatingcreateSuccessWidget;
  Widget _currentbody = const HomeScreen();

  void createaccountSuccess(){
    _floatingcreateSuccessWidget = SuccessCreateUserFloat();
  }

  void disableMessageSucess(){
    _floatingcreateSuccessWidget = null;
  }

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
      title: 'AgTech',
      home: Scaffold(
        floatingActionButton: _floatingcreateSuccessWidget,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.noAnimation,
        appBar: FixedAppBar(),
        body: _currentbody,
        bottomNavigationBar: FixedFooter(),
      )
    );
  }

  static MyAppState? of(BuildContext context) => context.findAncestorStateOfType<MyAppState>();
}