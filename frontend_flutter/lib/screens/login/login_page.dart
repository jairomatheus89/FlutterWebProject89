import 'package:flutter/material.dart';
import '../../widgets/appbar_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ],
              ),
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
                      Navigator.pushReplacementNamed(context, '/register');
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

