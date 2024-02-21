import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/country/india.dart';



class cards extends StatelessWidget
{
  final String c_name;
  final String imag_url;
  final VoidCallback? callBack;
   cards(
      this.c_name,
      this.imag_url,
      this.callBack,
      );


  @override
  Widget build(BuildContext context) {
    return
     Padding(
       padding: const EdgeInsets.only(left: 2, right:2, bottom: 3, top:3),
       child: Card(
         elevation: 30,
              color: Color.fromRGBO(255,219,172, 3),
              child:
              InkWell(
                child:
                Column(
                children: [Image.asset(imag_url,
                  height: 129,
                  width:187,
                  fit: BoxFit.fitHeight,),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(c_name,
                  style: const TextStyle(
                    color: Color.fromRGBO(0, 31, 33, 20),
                    fontSize: 15,
                    fontFamily: 'lemon_milk',
                    fontWeight: FontWeight.w500,
                  )),
                )]),
                onTap: (){
                    callBack!();
                },
              ),



           ),
     );

  }
}