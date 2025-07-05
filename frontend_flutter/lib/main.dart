import 'package:flutter/material.dart';

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

// WIDGET PARA O TITULO DO APP

class AgTitle extends StatelessWidget implements PreferredSizeWidget{
  const AgTitle({super.key});

  @override
  Widget build(BuildContext context){
    return PreferredSize(
      preferredSize:Size.fromHeight(100),
      child:Container(
        color:Colors.green,
        child: Center(
          child: Container(
            height: 60,
            width: 200,
            child: Center(
              child: Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 50),
                  children: [
                    TextSpan(text: "AG", style: TextStyle(color:Colors.red)),
                    TextSpan(text: "Tech", style: TextStyle(color:Colors.white))
                  ]
                )
              ),
            )
          )
        ),
      )
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);

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
        child: Center(child: Text("BODY", style: TextStyle(fontSize: 25),)
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context){

    return BottomAppBar(
      color:Colors.green,
      child: SizedBox(
        height: 50,
        child: Center(child: Text(
          "made by github.com/jairomatheus89",
          style: TextStyle(fontSize: 20),
        ))
      )
    );

  }
}