import 'package:flutter/material.dart';
import 'package:x_o/Login/login_screen.dart';

import 'board_header.dart';
import 'game_button.dart';

class GameScreen extends StatefulWidget {
  String player1Name;
  String player2Name;
   GameScreen({super.key,required this.player1Name,required this.player2Name});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<String> boardState =
  [
    "","","",
    "","","",
    "","","",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("X-O Game",style: Theme.of(context).textTheme.bodyLarge),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
          actions: [
           IconButton(onPressed: (){
             Navigator.pushReplacement(context,
                 MaterialPageRoute(builder: (_)=> const LoginScreen()));
           }, icon: const Icon(Icons.logout_outlined))
          ],
        ),
       backgroundColor: Colors.blueGrey,
       body: Column(
          children: [
            BoardHeader(playScore1: player1Score,playScore2: player2Score,
            player1Name: widget.player1Name,
            player2Name: widget.player2Name
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        GameButton(text: boardState[0],buttonFunction: buttonClicked,index:0),
                        GameButton(text: boardState[1],buttonFunction:buttonClicked ,index:1),
                        GameButton(text: boardState[2],buttonFunction: buttonClicked,index:2),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        GameButton(text: boardState[3],buttonFunction: buttonClicked,index: 3),
                        GameButton(text: boardState[4],buttonFunction:buttonClicked ,index: 4),
                        GameButton(text: boardState[5],buttonFunction: buttonClicked,index: 5),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        GameButton(text: boardState[6],buttonFunction: buttonClicked,index: 6),
                        GameButton(text: boardState[7],buttonFunction: buttonClicked,index: 7),
                        GameButton(text: boardState[8],buttonFunction:buttonClicked ,index: 8),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
    );

  }
  int counter = 0;
  int player1Score = 0;
  int player2Score = 0;
  void buttonClicked(int index)
  {
    // x > 0
    // 0 > 1
    // x > 2
    // o > 3
    // x > 4
    // o > 5
    // x > 6
    // o > 7
    // x > 8
    // if board state is not empty stop adding x or o
   if(boardState[index].isNotEmpty)
     {
       return ;
     }
    if(counter %2 == 0)
      {
        boardState[index] = "X";
      }
    else
    {
      boardState[index] = "O";
    }
    counter++;
    setState(() {

    });
    if(checkWinner("X"))
      {
        player1Score++ ;
        resetBoard();
      }
    else if(checkWinner("O"))
      {
       player2Score++ ;
       resetBoard();
      }
     else if(counter == 9)
       {
         resetBoard();
       }
  }
  void resetBoard()
  {
    boardState =
    [
      "","","",
      "","","",
      "","","",
    ];
    counter =0;
    setState(() {

    });
  }
  bool checkWinner(String playerSymbol)
  {

    for(int i =0 ; i<9 ; i+=3)
      {
        if(boardState[i] == playerSymbol &&
            boardState[i+1] == playerSymbol &&
            boardState[i+2] == playerSymbol)
        {
          return true;
        }
      }
    for(int i =0 ; i<3 ; i++)
    {
      if(boardState[i] == playerSymbol &&
          boardState[i+3] == playerSymbol &&
          boardState[i+6] == playerSymbol)
      {
        return true;
      }
    }
    if(boardState[0] == playerSymbol && boardState[4]==playerSymbol && boardState[8]==playerSymbol)
      {
        return true;
      }
    if(boardState[2] == playerSymbol && boardState[4]==playerSymbol && boardState[6]==playerSymbol)
      {
        return true;
      }

    return false ;
  }
}
