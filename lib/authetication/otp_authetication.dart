import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/btn_style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:travel_app/firebase_options.dart';
import 'package:travel_app/home/homepage.dart';




class otp_authetication extends StatefulWidget
{
  final String btnText;
  final String verificationid;
  otp_authetication(
      this.btnText,
       this.verificationid,
      );
  @override
  State<otp_authetication> createState() => _otp_autheticationState();
}

class _otp_autheticationState extends State<otp_authetication> {

  TextEditingController otpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromRGBO(0, 31, 33,20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      controller: otpcontroller,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Enter the otp",
                        hintStyle: TextStyle(color: Colors.white,),

                      )
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: btn_style(btnName: widget.btnText,
                callBack: ()async{
                  // Navigator.pop(context);
                  // Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> homepage()));

                  //verifying teh otp taking the verifictaion id in the constructor.
                  try{
                    PhoneAuthCredential credential = await PhoneAuthProvider.credential(
                        verificationId: widget.verificationid,
                        smsCode: otpcontroller.text.toString()); //this will check the otp
                    FirebaseAuth.instance.signInWithCredential(credential).then((value)
                    {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> homepage()));
                    });
                  }
                  catch(ex){
                      log(ex.toString());
                  }
                },
                ),
              ),

            ]
          )
        ),
    );

  }
}