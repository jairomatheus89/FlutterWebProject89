import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}



class LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 107, 33, 243),
      child: const Center(child: Text("Tela de Login", style: TextStyle(fontSize: 24, color: Colors.white))),
    );
  }
}
