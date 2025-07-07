import 'package:flutter/material.dart';
import '../../main.dart';
import '../register/register_screen.dart';
import '../login/login_screen.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){

    return Container(
      color: Colors.red,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 1,
                blurRadius: 6,
                offset: Offset.zero
              )
            ]
          ),
          height: 360,
          width: 340,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child:Center(
            child: Container(
              color:Colors.blue,
              width: 260,
              height: 260,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  Container(
                    width: 150,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(26)
                    ),
                    //alignment: Alignment.center,
                    child: TextButton(
                      onPressed: (){
                        MyAppState.of(context)?.changetoRegister(const RegisterScreen());
                      }, child:Text(
                        "REGISTER",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24
                        ),
                      )
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(26)
                    ),
                    child: TextButton(
                      onPressed: (){
                        MyAppState.of(context)?.changetoLogin(const LoginScreen());
                      }, child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}




