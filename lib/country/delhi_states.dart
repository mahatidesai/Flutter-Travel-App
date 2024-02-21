import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/custom_widgets/cards.dart';
import 'package:travel_app/custom_widgets/drawable.dart';
import 'package:travel_app/custom_widgets/states.dart';




class delhi_states extends StatelessWidget {
  var places = ["humayu tomb", "Red Fort", "Qutub Minar", "Taj Mahal"];
  var url = [
    "assests/country/india/delhi/humayu.jpg",
    "assests/country/india/delhi/redfort.jpg",
    "assests/country/india/delhi/qutubminar.jpg",
    "assests/country/india/delhi/taj mahal.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel App",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'lemon_milk',
            )),
        backgroundColor: Color.fromRGBO(0, 31, 33, 20),
      ),
      drawer: drawable(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(0, 31, 33, 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: places.length,
                  itemBuilder: (context, index){
                    return states(url[index], places[index]);
                  })
        ),
    );
  }
}
