import 'package:flutter/material.dart';

class AgtechAppBar extends StatelessWidget implements PreferredSizeWidget{
  const AgtechAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "AG",
                style: TextStyle(color: Colors.red)
              ),
              TextSpan(
                text: "Tech",
                style: TextStyle(color: Colors.white)
              )
            ]
          )
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}