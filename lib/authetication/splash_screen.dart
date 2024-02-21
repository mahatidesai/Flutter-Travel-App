import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/main.dart';
import 'package:travel_app/authetication/after_splash.dart';


class splash_screen extends StatefulWidget
{

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {


  @override
  void initState() {
    //executed first when the code is initiated.

    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) =>after_splash())); //push replacement is used to remove the splash from the stack and keep the home page only in the stack const MyHomePage(title: "Travel App"))
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Container(

        height: double.infinity,
        width:double.infinity,
        color: Color.fromRGBO(0, 31, 33, 20),

        child:Padding(
          padding:  EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Image.asset('assests/travel_splash.png'),
               Text("Travel App",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              Icon(Icons.flight_takeoff, size: 50,color: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}


