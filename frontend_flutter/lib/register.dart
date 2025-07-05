import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'header_bar.dart';
import 'bottom_bar.dart';
import 'dart:convert';
import 'dart:developer' as developer;

class RegisterWidget extends StatelessWidget{
  const RegisterWidget({super.key});


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AgTitle(),
        body: FormRegisterWidget(),
        bottomNavigationBar:BottomBar() 
      ),
    );
  }
}



class FormRegisterWidget extends StatefulWidget{
  const FormRegisterWidget({super.key});

  @override
  State<FormRegisterWidget> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegisterWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Form(
      key:_formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(hintText: "DIGITE SEU EMAIL"),
            validator:(String? emailvalue) {
              if (emailvalue == null || emailvalue.isEmpty) {
                return "Por favor digite algum email...";
              }
              return null;
            }
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: (){
                if(_formKey.currentState!.validate()){
                  Future<http.Response> createAlbum(String emailvalue) {
                    return http.post(
                      Uri.parse('103.199.185.28'),
                      headers: <String, String>{
                        'Content-Type': 'application/json; charset=UTF-8',
                      },
                      body: jsonEncode(<String, String>{'email': emailvalue}),
                    );
                  }
                }
              },
              child:const Text('Enviar')
            )
          )
        ],
      )
    );
  }
}