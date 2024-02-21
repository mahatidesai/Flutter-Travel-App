
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/btn_style.dart';

import 'login.dart';



class after_splash extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(0, 31, 33,20),

          //bottons decoration and alignment
             child:
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.all(11.0),
                //       child: btn_style(
                //         btnName: "Signin",
                //         callBack: (){
                //           Navigator.push(context,
                //             MaterialPageRoute(builder: (context)=> signin("Signin")),
                //           );
                //         },
                //       ),
                //     ),

                    //second elevated button
                    btn_style(
                      btnName: "Signin",
                      callBack: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> login()),
                        );
                      },
                    )

              //     ],
              //   ),
              //
              ],
            ),
        ),
    );

  }
}