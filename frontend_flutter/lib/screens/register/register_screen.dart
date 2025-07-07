import 'package:flutter/material.dart';
import '../login/login_screen.dart';
import '../../main.dart';

class RegisterScreen extends StatefulWidget{
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => RegisterScreenState();
}


class RegisterScreenState extends State<RegisterScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Container(
          width: 340,
          height: 360,
          //color: Colors.purple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset.zero
                    )
                  ],
                  color: Colors.green
                ),
                height: 320,
                width: 340,
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "REGISTRE-SE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          shadows: [
                            Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 1)
                          ]
                        ), 
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      padding: EdgeInsetsDirectional.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: 400,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Insira seu Email:",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.green,
                            ),
                          ),
                          TextField(),
                          Container(
                            width: 150,
                            height: 42,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: TextButton(
                              onPressed: (){
                                          
                              }, child: Text(
                                "Enviar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:24,
                                  shadows: [
                                    Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 1)
                                  ]
                                )
                              )
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text:"Já possui uma conta? ", style: TextStyle(color:Colors.white, fontSize: 16)),
                      ]
                    )
                  ),
                  GestureDetector(
                    onTap: () {
                      MyAppState.of(context)?.changetoLogin(const LoginScreen());
                    },
                    child: Text("Clique Aqui!", style: TextStyle(color: Colors.cyanAccent, fontSize: 20),)
                  )
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
