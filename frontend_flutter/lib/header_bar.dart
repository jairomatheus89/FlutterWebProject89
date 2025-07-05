import 'package:flutter/material.dart';

class AgTitle extends StatelessWidget implements PreferredSizeWidget{
  const AgTitle({super.key});

  @override
  Widget build(BuildContext context){
    return PreferredSize(
      preferredSize:Size.fromHeight(100),
      child:Container(
        color:Colors.green,
        child: Center(
          child: SizedBox(
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