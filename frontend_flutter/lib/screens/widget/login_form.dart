import 'package:flutter/material.dart';



class LoginFormField extends StatefulWidget{

  const LoginFormField({super.key});

  @override
  State<LoginFormField> createState() {
    return _LoginFormFieldState();
  }

}


class _LoginFormFieldState extends State<LoginFormField>{

  String handleUsername = '';
  String handlePassword = '';

  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  void showDatasHandling(){
    print("username: $handleUsername");
    print("password: $handlePassword");

    setState(() {
      handleUsername = '';
      handlePassword = '';
      usernameController.clear();
      passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Username:",
          style: TextStyle(
            color: Colors.green,
            fontSize: 25
          ),
        ),
        TextField(
          textAlign: TextAlign.center,
          controller: usernameController,
          decoration: InputDecoration(
            hintText: "Digite seu username aqui...",
            hintStyle: TextStyle(color: const Color.fromARGB(125, 0, 0, 0))
          ),
          onChanged: (e){
            handleUsername = e;
          },
        ),
        Text(
          "Password:",
          style: TextStyle(
            color: Colors.green,
            fontSize: 25
          ),
        ),
        TextField(
          textAlign: TextAlign.center,
          controller: passwordController,
          decoration: InputDecoration(
            hintText: "Digite seu Password aqui...",
            hintStyle: TextStyle(color: const Color.fromARGB(125, 0, 0, 0))
          ),
          onChanged: (e){
            handlePassword = e;
          },
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
                        
              showDatasHandling();
              

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
    );
  }
}