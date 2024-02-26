import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/authetication/otp_authetication.dart';
import 'package:travel_app/custom_widgets/btn_style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:travel_app/firebase_options.dart';



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
                         //  Navigator.pushReplacement(context,
                         //  MaterialPageRoute(builder: (context)=> otp_authetication("Login")));
                         // }

                         await FirebaseAuth.instance.verifyPhoneNumber(
                             verificationCompleted: (PhoneAuthCredential credential){},
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

  // void verifyPhoneNumber() {
  //     auth.verifyPhoneNumber(
  //         phoneNumber: phoneno.text,
  //         verificationCompleted: (PhoneAuthCredential credential) async{
  //            await auth.signInWithCredential(credential).then((value)=>
  //             {
  //               print("You are logged in")
  //             });
  //         },
  //         verificationFailed: (FirebaseAuthException exception){
  //             print(exception.message);
  //         },
  //         codeSent: (String verificationID, int? resendToken){
  //               verificationIDRecieve = verificationID;
  //               Navigator.push(context, MaterialPageRoute(builder: (context)=> otp_authetication("Signin")));
  //         },
  //         codeAutoRetrievalTimeout: (String verificationID){
  //
  //         });
  //}
}

