import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class btn_style extends StatelessWidget {
  final String btnName;
  final VoidCallback? callBack;
  final TextStyle? textstyle;


  const btn_style({
    required this.btnName,
    this.callBack,
    this.textstyle,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:()
        {
          callBack!();

           },

        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(255,219,172, 1)),
        shadowColor: MaterialStateProperty.all(Colors.black),
        elevation: MaterialStateProperty.all(10),
      ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(btnName,
             style: textstyle==null ?TextStyle(
              color: Color.fromRGBO(0, 31, 33, 20),
              fontSize: 30,
               fontFamily: 'lemon_milk',
            ): textstyle),
        ),
   );

  }
}
