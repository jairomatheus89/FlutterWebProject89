import 'package:flutter/material.dart';
import '../../widgets/appbar_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AgtechAppBar(),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed:(){
                  Navigator.pushNamed(context, '/');
                },
                child: Text("Ir para Login")
              )
            ],
          ),
        ),
      ),
    );
  }
}