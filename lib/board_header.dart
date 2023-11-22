import 'package:flutter/material.dart';

class BoardHeader extends StatelessWidget {
 int playScore1 = 0;
 int playScore2 = 0;
 String player1Name;
 String player2Name;
 String player1Symbol;
 String player2Symbol;
 BoardHeader({super.key, required this.playScore1, required this.playScore2,required this.player1Name,required this.player2Name,
 required this.player1Symbol,required this.player2Symbol});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("$player1Name ($player1Symbol)",style:TextStyle(
                   color: player1Symbol=="X"? Colors.black :Colors.white ,
                  fontSize: 25,fontWeight: FontWeight.bold)),
              Text("$player2Name ($player2Symbol)",style: TextStyle(
                  color: player2Symbol=="X"? Colors.black :Colors.white ,
                  fontSize: 25,fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Score : $playScore1",style: TextStyle(
                  color: player1Symbol=="X"? Colors.black :Colors.white ,
                  fontSize: 25,fontWeight: FontWeight.bold)),
              Text("Score : $playScore2",style: TextStyle(
                  color: player2Symbol=="X"? Colors.black :Colors.white ,
                  fontSize: 25,fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
