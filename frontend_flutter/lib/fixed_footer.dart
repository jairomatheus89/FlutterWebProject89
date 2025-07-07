import 'package:flutter/material.dart';

class FixedFooter extends StatelessWidget {
  const FixedFooter({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.center,
      height: 30,
      color: Colors.green,
      child: Text(
        "Made by github.com/jairomatheus89",
        style: TextStyle(color: Colors.white, fontSize: 20),
      )
    );
  }
}