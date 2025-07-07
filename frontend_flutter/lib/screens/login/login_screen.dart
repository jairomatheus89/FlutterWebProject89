import 'package:flutter/material.dart';
import 'package:frontend_flutter/main.dart';
import '../register/register_screen.dart';


class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}



class LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red
      ),
      child: Center(
        child: Container(
          width: 340,
          height: 500,
          //color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 340,
                height: 360,
                padding: EdgeInsets.all(8),
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
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 50,
                        //color: const Color.fromARGB(255, 200, 255, 0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            shadows: [
                              Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 1)
                            ]
                          )
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 200,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Insira seu email",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.green,
                                )
                              ),
                              TextField(),
                              Container(
                                width:150,
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
                                      fontSize: 24,
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
                      )
                    ],
                  ),
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Não Possui uma Conta? ", style: TextStyle(fontSize: 16, color: Colors.white)),
                  GestureDetector(
                    onTap: (){
                      MyAppState.of(context)?.changetoRegister(const RegisterScreen());
                    },
                    child: Text("Clique Aqui!", style: TextStyle(color: Colors.cyanAccent, fontSize: 20),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
