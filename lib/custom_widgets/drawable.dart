import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class drawable extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Drawer(
       backgroundColor:Color.fromRGBO(0, 31, 33, 70),
       elevation: 2,
       width: 200,
       child: Padding(
       padding: const EdgeInsets.only(top: 120),
    child:Column(
     children: [
       ElevatedButton(onPressed: (){},
         child: Padding(
           padding: const EdgeInsets.only(bottom: 20),
           child: Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 6.0, right:8),
                 child: Icon(Icons.account_circle_sharp, size: 40,color: Color.fromRGBO(255,219,172, 3),),
               ),
               Text("Profile", style: TextStyle(
                 fontSize:28,
                 color: Color.fromRGBO(255,219,172, 3),
               ),),
             ],
           ),
         ),
         style: ButtonStyle(
           backgroundColor: MaterialStateProperty.all(Colors.transparent),
           elevation: MaterialStateProperty.all(0),
         ),),
       ElevatedButton(onPressed: (){},
         child: Row(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 6.0, right:8),
               child: Icon(Icons.ad_units, size: 40,color: Color.fromRGBO(255,219,172, 3),),
             ),
             Text("Past", style: TextStyle(
               fontSize:28,
               color: Color.fromRGBO(255,219,172, 3),
             ),),
           ],
         ),
         style: ButtonStyle(
           backgroundColor: MaterialStateProperty.all(Colors.transparent),
           elevation: MaterialStateProperty.all(0),
         ),),
       ElevatedButton(onPressed: (){},
         child: Padding(
           padding: const EdgeInsets.only(top: 20),
           child: Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 6.0, right:8),
                 child: Icon(Icons.logout_rounded, size: 40,color:Color.fromRGBO(255,219,172, 3),),
               ),
               Text("Log out", style: TextStyle(
                 fontSize:28,
                 color: Color.fromRGBO(255,219,172, 3),
               ),),
             ],
           ),
         ),
         style: ButtonStyle(
           backgroundColor: MaterialStateProperty.all(Colors.transparent),
           elevation: MaterialStateProperty.all(0),
         ),)
     ],
   ))
   );

  }
}