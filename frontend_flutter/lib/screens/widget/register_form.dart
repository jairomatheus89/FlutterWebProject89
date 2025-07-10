import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../main.dart';
import '../login/login_screen.dart';
import 'package:http/http.dart' as http; //HTTP Import
import 'dart:convert'; //http converter data to json import

class FormFieldWidget extends StatefulWidget{

  const FormFieldWidget({super.key});

  @override
  State<FormFieldWidget> createState(){
    return _FormFieldWidgetState();
  }
}

class _FormFieldWidgetState extends State<FormFieldWidget> {

  var emailcontroller = TextEditingController();
  var usernamecontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  String emailInput = '';
  String usernameInput = '';
  String passwordInput = '';
  
  var formAlert = Text('');


  void clearInputs(){
    emailcontroller.clear();
    usernamecontroller.clear();
    passwordcontroller.clear();

    emailInput = '';
    usernameInput = '';
    passwordInput = '';
  }

  Future<http.Response> postRequest() {

    return http.post(
      Uri.parse('http://103.199.185.28:3000/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': emailInput,
        'username': usernameInput,
        'password': passwordInput
      }),
    );
  }

  Future<void> successRegistry() async{
    try{
      var postResponse = await postRequest();

      if(postResponse.statusCode == 400){
        var handleJson = await postResponse.body;

        var msg_error = json.decode(handleJson)["message"][0];
        print(msg_error);
        
        setState(() {
          clearInputs();
        });
        formAlert = Text(msg_error, style: TextStyle(color: Colors.red, fontSize: 12),);
        return;
      }

      setState(() {
        clearInputs();
        MyAppState.of(context)?.changetoLogin(const LoginScreen());
        MyAppState.of(context)?.createaccountSuccess();
      });

    } catch (e){
      print('error: $e');
    }
  }

  @override
  Widget build(BuildContext context){

    final emailRegex = RegExp(r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,10}$');

    
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          textAlign: TextAlign.center,
          "Insira seu Email:",
          style: TextStyle(
            fontSize: 22,
            color: Colors.green,
          ),
        ),
        TextField(
          maxLength: 40,
          controller: emailcontroller,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(
              RegExp(r'[a-zA-Z0-9@._%-]')
            ),
          ],
          onChanged: (valueEmail){
            emailInput = valueEmail;
          },
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            counterText: "",
            hintText: "Digite seu email aqui...",
            hintStyle: TextStyle(color: const Color.fromARGB(125, 0, 0, 0))
          ),
        ),
        Text(
          "Insira seu Username:",
          style: TextStyle(
            fontSize: 22,
            color: Colors.green,
          ),
        ),
        TextField(
          maxLength: 40,
          controller: usernamecontroller,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(
              RegExp(r'[a-zA-Z0-9@._%-]')
            ),
          ],
          onChanged: (value){
            usernameInput = value;
          },
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            counterText: "",
            hintText: "Digite seu Username aqui...",
            hintStyle: TextStyle(color: const Color.fromARGB(125, 0, 0, 0))
          ),
        ),
        Text(
          "Insira seu Password:",
          style: TextStyle(
            fontSize: 22,
            color: Colors.green,
          ),
        ),
        TextField(
          maxLength:50,
          controller: passwordcontroller,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(
              RegExp(r'[a-zA-Z0-9@._%-]')
            ),
          ],
          onChanged: (value){
            passwordInput = value;
          },
          textAlign: TextAlign.center,
          obscureText: true,
          decoration: InputDecoration(
            counterText: "",
            hintText: "Digite seu Password aqui...",
            hintStyle: TextStyle(color: const Color.fromARGB(125, 0, 0, 0))
          ),
        ),
        Container(
          width: 150,
          height: 42,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20)
          ),
          child: TextButton(
            onPressed: (){
              //CODIGO DO BOTAO PARA RECOLHER O FORMULARIO
              if (emailInput == ''){
                print("Adicione o email idiota");
                setState(() {
                  formAlert = Text("Falta o email otario...", style: TextStyle(color: Colors.red),);
                });
              }
              else if (usernameInput == ''){
                print("Adicione o username idiota");
                setState(() {
                  formAlert = Text("Falta o username otario...", style: TextStyle(color: Colors.red),);
                });
              }
              else if (passwordInput == ''){
                print("Adicione a senha idiota");
                setState(() {
                  formAlert = Text("Falta a senha otario...", style: TextStyle(color: Colors.red),);
                });
              } else {
                if (!emailRegex.hasMatch(emailInput)){
                  print("Por favor Insere um email valido ai titiu plis...");
                  setState(() {
                    formAlert = Text("Insira um email valido...", style: TextStyle(color: Colors.red),);
                  });
                } else {
                  print("Email validado!");
                  successRegistry();
                }
              }
            }, child: Text(
              "Enviar",
              style: TextStyle(
                color: Colors.white,
                fontSize:22,
                shadows: [
                  Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 1)
                ]
              )
            )
          ),
        ),
        SizedBox(child: formAlert,)
      ],
    );
  }
}
