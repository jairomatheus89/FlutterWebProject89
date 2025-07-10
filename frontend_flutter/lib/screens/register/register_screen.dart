import 'package:flutter/material.dart';
import '../login/login_screen.dart';
import '../widget/register_form.dart';
import '../widget/log_reg_clikaqui.dart';
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
        child: SizedBox(
          width: 340,
          height: 480,
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
                height: 420,
                width: 440,
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "REGISTRE-SE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
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
                      height: 332,
                      child: FormFieldWidget(),
                    ),    
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
                    child:OnHoverCliqueAqui(),
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

