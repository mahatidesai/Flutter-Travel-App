import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/home/homepage.dart';
import 'package:travel_app/authetication/after_splash.dart';
import 'package:firebase_auth/firebase_auth.dart';




class splash_screen extends StatefulWidget
{

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  void initState() {

    super.initState();
          Timer(const Duration(seconds: 4), () {
            if(FirebaseAuth.instance.currentUser==null)
          {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=> after_splash()));
          }
          else{
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=> homepage()));
          }

        });
    //
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


