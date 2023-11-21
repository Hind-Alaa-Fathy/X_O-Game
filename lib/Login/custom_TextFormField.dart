import 'package:flutter/material.dart';

class custom_TextFormField extends StatelessWidget {
  TextEditingController controller;
  String labelText ;

  custom_TextFormField({super.key, required this.controller, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        validator: (value){
          if(value!.isEmpty)
            {
              return "Please Enter Player name ";
            }
        },
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          labelText: labelText,

          errorStyle:  TextStyle(color:Colors.blueGrey[200] ),
          focusedErrorBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.blueGrey.shade800,),borderRadius: BorderRadius.circular(30),),
          errorBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.blueGrey.shade800,),borderRadius: BorderRadius.circular(30),),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          focusedBorder:OutlineInputBorder(borderSide:  BorderSide(color: Colors.blueGrey.shade800,),borderRadius: BorderRadius.circular(30),),
          labelStyle: TextStyle(color: Colors.blueGrey[900]),

    ),
      ),
    );
  }
}
