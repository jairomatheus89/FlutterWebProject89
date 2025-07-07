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
                blurRadius: 4,
                offset: Offset.zero
              )
            ]
          ),
          height: 360,
          width: 340,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child:Center(
            child: Container(
              //color:Colors.blue,
              width: 260,
              height: 260,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  Container(
                    width: 200,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(26),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset.zero,
                          spreadRadius: 1,
                          blurRadius: 4
                        )
                      ]
                    ),
                    //alignment: Alignment.center,
                    child: TextButton(
                      onPressed: (){
                        MyAppState.of(context)?.changetoRegister(const RegisterScreen());
                      }, child:Text(
                        "REGISTER",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 36,
                          shadows: [
                            Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 1)
                          ]
                        ),
                      )
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(26),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset.zero,
                          spreadRadius: 1,
                          blurRadius: 4
                        )
                      ]
                    ),
                    child: TextButton(
                      onPressed: (){
                        MyAppState.of(context)?.changetoLogin(const LoginScreen());
                      }, child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 36,
                          shadows: [
                            Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 1)
                          ]
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




