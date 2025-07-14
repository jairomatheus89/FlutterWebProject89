import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../widgets/appbar_widget.dart';
import '../../services/auth_service.dart';
import 'dart:convert';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  Color _butToLoginColor = Colors.red;

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
              child: FormzinColumn(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Ja possui uma conta? ",
                    style: TextStyle(color: Colors.green)
                  )
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (e){
                    setState(() {
                      _butToLoginColor = const Color.fromARGB(255, 0, 126, 143);
                    });
                  },
                  onExit: (e){
                    setState(() {
                      _butToLoginColor = Colors.red;
                    });
                  },
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: Text("Clique Aqui!", style: TextStyle(color: _butToLoginColor),),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FormzinColumn extends StatefulWidget{
  const FormzinColumn({super.key});

  State<FormzinColumn> createState(){
    return _FormzinColumnState();
  }
}

class _FormzinColumnState extends State<FormzinColumn>{

  var authService = new AuthService();

  var _formAlert;

  var emailController = TextEditingController();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  String emailHandler = '';
  String usernameHandler = '';
  String passwordHandler = '';

  void clearValuesInputs(){
    emailHandler = '';
    usernameHandler = '';
    passwordHandler = '';
  }

  Future<void> sendClearInputs() async{

    try{
      var response = await authService.createUser(emailHandler,usernameHandler,passwordHandler);
      var responseJson = json.decode(response.body);

      print("email: $emailHandler");
      print("username: $usernameHandler");
      print("pass: $passwordHandler");

      if (response.statusCode == 201){
        print("Parabens conta criada com sucesso!");
        setState(() {
          emailController.clear();
          usernameController.clear();
          passwordController.clear();
          _formAlert = Text(
            responseJson["SUCCESO"],
            style: TextStyle(color: Colors.yellowAccent),
          );
        });
        clearValuesInputs();
        return;

      } else {
        setState(() {
          emailController.clear();
          usernameController.clear();
          passwordController.clear();
          _formAlert = Text(
            responseJson["message"][0],
            style: TextStyle(color: Colors.red),
          );
        });
        clearValuesInputs();
        throw Exception();
      }

    } catch (e){
      print("MAS OOOPS... algo errado!");
      throw Exception(e);
    }
    

  }

  Widget build(BuildContext context){

    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: "Digite o email aqui",
              labelText: "Email",
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.white
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.white
                )
              ),
              hintStyle: TextStyle(color: const Color.fromARGB(125, 255, 255, 255)),
              labelStyle: TextStyle(
                color: Colors.white
              )
            ),
            onChanged: (e){
              emailHandler = e;
            },
          ),
          TextFormField(
            controller: usernameController,
            decoration: InputDecoration(
              hintText: "Digite o username aqui",
              labelText: "Username",
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.white
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.white
                )
              ),
              hintStyle: TextStyle(color: const Color.fromARGB(125, 255, 255, 255)),
              labelStyle: TextStyle(
                color: Colors.white
              )
            ),
            onChanged: (e){
              usernameHandler = e;
            },
          ),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Digite o password aqui",
              labelText: "Password",
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.white
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.white
                )
              ),
              hintStyle: TextStyle(color: const Color.fromARGB(125, 255, 255, 255)),
              labelStyle: TextStyle(
                color: Colors.white
              )
            ),
            onChanged: (e){
              passwordHandler = e;
            },
          ),
          TextButton(
            onPressed:(){
              sendClearInputs();
            },
            child: Text("FUCK")
          ),
          SizedBox(
            child: _formAlert,
          )
        ],
      ),
    );
  }
}