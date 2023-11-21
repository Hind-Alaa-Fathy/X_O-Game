import 'package:flutter/material.dart';

import 'game_screen.dart';
import 'Login/login_screen.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:  const TextTheme(
            // game name
            bodyLarge :TextStyle(
              color: Colors.white,
              fontSize: 30
            ),
            //player1 text
            titleLarge :TextStyle(
              color: Colors.black,
              fontSize: 25
            ),
          //player2 text
            bodyMedium:TextStyle(
              color: Colors.white,
              fontSize: 25
            ),

        ),
      ),
      home: const LoginScreen(),

    );
  }

}