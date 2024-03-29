import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/authetication/otp_authetication.dart';
import 'package:travel_app/custom_widgets/btn_style.dart';


class login extends StatefulWidget
{
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  var phoneno = TextEditingController();
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
         color: Color.fromRGBO(0, 31, 33,20),
        child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children:[
                    Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: phoneno,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                      hintText: "Enter your Phone Number",
                      suffixIcon: Icon(
                          Icons.phone,
                          color: Colors.white,
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.greenAccent,
                    )),
                    ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: btn_style(
                      btnName: "Send OTP",
                       callBack: ()async {
                         await FirebaseAuth.instance.verifyPhoneNumber(
                             verificationCompleted: (PhoneAuthCredential credential){
                                  //when verification is sucessfull
                             },
                             verificationFailed: (FirebaseAuthException e){
                                 //when the verification fails
                             },
                             codeSent: (String verificationid, int? resendtoken){
                               Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context)=> otp_authetication("Login", verificationid)));
                             },
                             codeAutoRetrievalTimeout: (String verificationid){},
                             phoneNumber: phoneno.text.toString(),
                         );
                       })
                      ),
                 ]
    )
    )
        )
      );
  }


}

