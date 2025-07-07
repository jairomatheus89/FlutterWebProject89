import 'package:flutter/material.dart';

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
                      color: const Color.fromARGB(255, 0, 0, 0),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset.zero
                    )
                  ],
                  color: Colors.green
                ),
                height: 320,
                width: 340,
                padding: EdgeInsetsGeometry.fromLTRB(8,8,8,8),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "REGISTRE-SE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36
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
                        children: [
                          Text("Insira seu Email:", style: TextStyle(fontSize: 25),),
                          TextField(),
                          TextButton(
                            onPressed: (){
              
                            }, child: Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              alignment: Alignment.center,
                              width: 120,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Text(
                                "Enviar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:24
                                )
                              )
                            )
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
                      print("SEXO ANAL");
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
