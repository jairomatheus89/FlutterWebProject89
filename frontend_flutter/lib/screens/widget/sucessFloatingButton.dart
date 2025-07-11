import 'package:flutter/material.dart';

class SuccessCreateUserFloat extends StatefulWidget {
  const SuccessCreateUserFloat({
    super.key,
  });

  @override
  State<SuccessCreateUserFloat> createState() => _SuccessCreateUserFloatState();
}

class _SuccessCreateUserFloatState extends State<SuccessCreateUserFloat> {

  Color textColorzinha = Colors.yellow;
  bool colorTurnColor = false;

  Future<void> turnTrue () async {
    textColorzinha = Colors.green;
    await Future.delayed(Duration(milliseconds: 200));
    setState(() {
      colorTurnColor = true;
    });
  }


  Future<void> turnFalse () async {
    textColorzinha = Colors.yellow;
    await Future.delayed(Duration(milliseconds: 200));
    setState(() {
      colorTurnColor = false;
    });
  }


  @override
  Widget build(BuildContext context){

    if(!colorTurnColor){
      turnTrue();
    } else {
      turnFalse();
    }

    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
      width: 264,
      height: 20,
      child: Text(
        "CONTA CRIADA COM SUCESSO!",
        style: TextStyle(
          color: textColorzinha,
          shadows: [
            Shadow(color: Colors.black,offset: Offset(1, 1),blurRadius: 1)
          ],
          fontSize: 18,
        ),
      ),
    );
  }
}