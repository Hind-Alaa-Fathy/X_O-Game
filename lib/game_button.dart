import 'package:flutter/material.dart';

class GameButton extends StatefulWidget {
   String text ;
   Function buttonFunction;

   // to make each button know his index
   int index;
   GameButton({super.key, required this.text,required this.buttonFunction,required this.index});

  @override
  State<GameButton> createState() => _GameButtonState();
}

class _GameButtonState extends State<GameButton> {
  @override
  Widget build(BuildContext context) {
    Color textColor = Colors.black;
    if (widget.text == "O") {
      textColor = Colors.white;
    }
    return Expanded(
        child: ElevatedButton(
          onPressed: () {
            widget.buttonFunction(widget.index);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blueGrey[800], // Set button background color to grey
          ),
      child: Text(widget.text, style:  TextStyle(
        color: textColor,
          fontSize: 50
      )),


    ));
  }
}
