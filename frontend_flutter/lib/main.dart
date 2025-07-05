import 'package:flutter/material.dart';
import 'bottom_bar.dart'; // importing BottomBar()
import 'header_bar.dart'; // importing AgTitle()
import 'register.dart';

//MAIN
void main() {
  runApp(const App());
}

// SCAFFOLD PRINCIPAL DA PAGINA DO APP

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AgTitle(),
        body: HomeBody(),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}

// O WIDGET PARA A PAGINA HOME
// QUE VAI DIRECIONAR O USUARIO 
// PARA O LOGIN OU CADASTRO

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        width: 400,
        height: 700,
        color: Colors.green,
        child: Center(
          child: Column(
            children: [
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterWidget())
                );

              }, child: Text(
                    "REGISTER"
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}