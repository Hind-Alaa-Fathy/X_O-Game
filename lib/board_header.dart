import 'package:flutter/material.dart';

class BoardHeader extends StatelessWidget {
 int playScore1 = 0;
 int playScore2 = 0;
 String player1Name;
 String player2Name;
 BoardHeader({super.key, required this.playScore1, required this.playScore2,required this.player1Name,required this.player2Name});
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
              Text("$player1Name (X)",style: Theme.of(context).textTheme.titleLarge),
              Text("$player2Name (O)",style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Score : $playScore1",style: Theme.of(context).textTheme.titleLarge),
              Text("Score : $playScore2",style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ],
      ),
    );
  }
}
