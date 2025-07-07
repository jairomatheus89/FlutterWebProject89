import 'package:flutter/material.dart';

class FixedAppBar extends StatelessWidget implements PreferredSizeWidget{
  const FixedAppBar({super.key});

  @override
  Widget build(BuildContext context ){
    return AppBar(
      shadowColor: Colors.black,
      backgroundColor: Colors.green,
      centerTitle: true,
      flexibleSpace: Center(
        child: Container(
          //color:const Color.fromRGBO(255, 193, 7, 1),
          alignment: Alignment.center,
          width: 400,
          height: 70,
          child:Text.rich(
            style: TextStyle(
              fontSize: 50,
              //backgroundColor: Colors.black
            ),
            TextSpan(
              children:[
                TextSpan(text: "AG", style: TextStyle(color: Colors.red)),
                TextSpan(text: "Tech", style: TextStyle(color: Colors.white))
              ]
            )
          )
        )
      )
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}