import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/custom_widgets/drawable.dart';
import 'package:travel_app/custom_widgets/cards.dart';
import 'package:travel_app/custom_widgets/drawable.dart';
import 'package:travel_app/country/india.dart';
import 'package:travel_app/home/call_country.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  var country =[
    'INDIA',
    'CHINA',
    'UNITED STATES',
    'INDONESIA',
    'JAPAN',
    'MEXICO',
    "BRAZIL",
    "EGYPT",
    "GERMANY",
    "THAILAND",
    "ITALY",
    "RUSSIA",
    "UNITED KINGDOM",
    "PHILIPPINES",
    "COLUMBIA",
    "CANADA",
    "MALAYSIA",
    "MOROCCO",
    "AUSTRALIA",
    "SINGAPORE"];

  var image_assest = [
    "assests/india.jpg",
    "assests/china.jpg",
    "assests/us.jpg",
    "assests/indonesia.jpg",
    "assests/japan.jpg",
    "assests/mexico.jpg",
    "assests/brazil.jpg",
    "assests/egypt.jpg",
    "assests/germany.jpg",
    "assests/thailand.jpg",
    "assests/italy.jpg",
    "assests/russia.jpg",
    "assests/uk.jpg",
    "assests/philippines.jpg",
    "assests/columbia.jpg",
    "assests/canada.jpg",
    "assests/malaysia.jpg",
    "assests/morocco.jpg",
    "assests/australia.jpg",
    "assests/singapore.jpg"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: Text("Travel App",style:TextStyle(
            color: Colors.white,
            fontFamily: 'lemon_milk',)),
          backgroundColor: Color.fromRGBO(0, 31, 33, 20),),

        drawer: drawable(),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromRGBO(0, 31, 33, 20),
            child:Column(
                  children: [
                    Container(

                        child:
                        Container(
                          child: Image.asset(
                            "assests/airplane.jpg",
                            height: 245,
                            width: 400,
                          ),
                        ),
                      ),

                Container(
                  color: Colors.transparent,
                  height: 452,
                  width: 500,

                  child: Column(
                    children: [
                      Expanded(
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                          itemCount: country.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (context, index){
                            return cards(
                              country[index],image_assest[index],(){
                                Navigator.push(context, MaterialPageRoute(builder: (conetxt) => india()));
                            }
                            );
                          },

                        ),
                      ),
                  ]),
                ),

    ]))
    );
  }
}
