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
  bool pLayer1isXSelected = false;
  bool pLayer1isOSelected = false;
  bool pLayer2isXSelected = false;
  bool pLayer2isOSelected = false;
  String player1Symbol ="";
  String player2Symbol ="";
  bool isSymbolEqual = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              Column(
                children: [
                  Text("Select your Symbol",style: TextStyle(fontSize: 20,color: Colors.blueGrey[900])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          pLayer1isXSelected = true;
                          pLayer1isOSelected = false;
                          player1Symbol = "X";
                          setState(() {

                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(10),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color:pLayer1isXSelected ?Colors.blueGrey[700]  :Colors.blueGrey),
                          child: const Text("X"),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          pLayer1isOSelected = true;
                          pLayer1isXSelected = false;
                          player1Symbol = "O";
                          setState(() {

                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(10),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: pLayer1isOSelected ?Colors.blueGrey[700] :Colors.blueGrey),
                          child: const Text("O"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              custom_TextFormField(
                  controller: player2NameController,
                  labelText: "Player 2 Name",
              ),
              Column(
                children: [
                  Text("Select your Symbol",style: TextStyle(fontSize: 20,color: Colors.blueGrey[900])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          pLayer2isXSelected = true;
                          pLayer2isOSelected = false;
                          player2Symbol = "X";
                          setState(() {

                          });

                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(10),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color:pLayer2isXSelected ?Colors.blueGrey[700] :Colors.blueGrey),
                          child: const Text("X"),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          pLayer2isOSelected = true;
                          pLayer2isXSelected = false;
                          player2Symbol = "O";
                          setState(() {

                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(10),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: pLayer2isOSelected ?Colors.blueGrey[700]  :Colors.blueGrey),
                          child: const Text("O"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              if(isSymbolEqual) Padding(
                padding: const EdgeInsets.only(
                   right: 20,
                  left: 10,
                  bottom: 10
                ),
                child: Row(
                  children: [
                    Icon(Icons.info_outline,color: Colors.blueGrey[800]),
                    const SizedBox(width: 5,),
                    Text("Symbol must not be empty or same",style: TextStyle(
                      color: Colors.blueGrey[900],
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              MaterialButton(
                  onPressed: (){
                    if(player1Symbol == player2Symbol )
                    {
                      isSymbolEqual = true;
                      setState(() {

                      });
                    }
                    else if(player1Symbol =="" || player2Symbol==""){
                      isSymbolEqual = true;
                      setState(() {

                      });
                    }
                    if(formKey.currentState!.validate())
                      {
                        if(player1Symbol == player2Symbol)
                          {
                            isSymbolEqual = true;
                            setState(() {

                            });
                          }
                        else if(player1Symbol =="" || player2Symbol==""){
                          isSymbolEqual = true;
                          setState(() {

                          });
                        }
                         else{
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_)=> GameScreen(
                                player1Name: player1NameController.text,
                                player2Name: player2NameController.text,
                                player1Symbol: player1Symbol,
                                player2Symbol: player2Symbol,
                              ))
                          );
                        }
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
