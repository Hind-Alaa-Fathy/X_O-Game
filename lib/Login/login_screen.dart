import 'package:flutter/material.dart';

import 'custom_TextFormField.dart';
import '../game_screen.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var player1NameController = TextEditingController();

  var player2NameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors:[Colors.blueGrey,Colors.grey] ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              custom_TextFormField(
                  controller: player1NameController,
                  labelText: "Player 1 Name",
              ),
              custom_TextFormField(
                  controller: player2NameController,
                  labelText: "Player 2 Name",
              ),
              MaterialButton(
                  onPressed: (){
                    if(formKey.currentState!.validate())
                      {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_)=> GameScreen(
                              player1Name: player1NameController.text,
                              player2Name: player2NameController.text,
                            ))
                        );
                      }
                  },
                color: Colors.blueGrey[900],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                height: 50,
              child: const Text("Play",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    fontFamily: 'LobsterTwo'
                  )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
