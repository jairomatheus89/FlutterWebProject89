import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../widgets/appbar_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  Color register_click_color = Colors.green;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AgtechAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                children:[
                  TextSpan(
                    text: "Não possui uma conta? ",
                  ),
                  TextSpan(
                    text: "Clique Aqui!",
                    style: TextStyle(
                      color: register_click_color
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      Navigator.pushNamed(context, '/register');
                    }
                  )
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}

