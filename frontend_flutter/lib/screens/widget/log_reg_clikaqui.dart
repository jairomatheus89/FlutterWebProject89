import 'package:flutter/material.dart';

class OnHoverCliqueAqui extends StatefulWidget{

  const OnHoverCliqueAqui({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return _OnHoverCliqueAquiState();
  }
}

class _OnHoverCliqueAquiState extends State<OnHoverCliqueAqui>{

  Color textColor = Colors.cyanAccent;

  @override
  Widget build(BuildContext context){
    return MouseRegion(
      onEnter: (event) => {
        setState(() {
          textColor = Colors.amberAccent;
        })
      },
      onExit: (event) => {
        setState(() {
          textColor = Colors.cyanAccent;
        })
      },
      cursor: SystemMouseCursors.click,
      child: Text(
        "Clique Aqui!",
        style: TextStyle(
          fontSize: 18,
          color: textColor,
        ),
      )
    );
  }
}


