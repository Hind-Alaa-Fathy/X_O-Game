import 'package:flutter/material.dart';

import 'game_screen.dart';
import 'Login/login_screen.dart';

void main()
{
  runApp(const Myapp());
}

class Myapp extends StatelessWidget
{
  const Myapp({super.key});

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

        ),
      ),
      home: const LoginScreen(),

    );
  }

}