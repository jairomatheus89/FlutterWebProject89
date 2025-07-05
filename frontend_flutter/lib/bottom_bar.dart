import 'package:flutter/material.dart';

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