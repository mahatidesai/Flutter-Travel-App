import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/country/delhi.dart';
import 'package:travel_app/custom_widgets/cards.dart';
import '../custom_widgets/drawable.dart';
import '../country/country_state.dart';


class india extends StatelessWidget
{
  var states = [
    "DELHI",
    "ANDHRA PRADESH",
    "ARUNACHAL PRADESH",
    "ASSAM",
    "GOA",
    "GUJARAT",
    "HARYANA",
    "HIMACHAL PRADESH",
    "JAMMU KASHMIR",
    "KARNATAKA",
    "KERALA",
    "MADHYA PRADESH",
    "MAHARASHTRA",
    "MANIPUR",];

   var image_assest=["assests/country/india/delhi.jpg",
     "assests/country/india/andhra_pradesh.jpg",
      "assests/country/india/arunachal.jpg",
     "assests/country/india/assam.jpg",
     "assests/country/india/goa.jpg",
     "assests/country/india/gujrat.jpg",
     "assests/country/india/haryana.jpg",
     "assests/country/india/himachal.jpg",
     "assests/country/india/jammu.jpg",
     "assests/country/india/karnataka.jpg",
     "assests/country/india/kerela.jpeg",
     "assests/country/india/madhya.jpg",
     "assests/country/india/maharashtra.jpg",
     "assests/country/india/manipur.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Travel App",
      style:TextStyle(
        color: Colors.white,
        fontFamily: 'lemon_milk',
      )),backgroundColor: Color.fromRGBO(0, 31, 33, 20),),
      drawer:  drawable(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(0,31,33,20),
        child:
          Column(
            children: [
              Container(

                child:
                Container(
                  child: Image.asset(
                    "assests/india.jpg",
                    height: 220,
                    width: 400,
                  ),
                ),
              ),
              Text("INDIA",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'black_future',
                fontWeight: FontWeight.w100,
              ),),

            Container(
                color: Colors.transparent,
                height: 433,
                width: 500,

               child: Column(
                  children: [
                      Expanded(
                      child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemCount: states.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                      return cards(
                      states[index],image_assest[index],(){
                      Navigator.push(context, MaterialPageRoute(builder: (conetxt) => delhi()));
                      }
                      );
                      },
                ), ),
          ],
          ),
      ),
      ]),
      ),

    );

  }
}