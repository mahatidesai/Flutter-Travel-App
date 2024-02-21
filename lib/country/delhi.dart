import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/country/delhi_states.dart';
import 'package:travel_app/custom_widgets/cards.dart';
import 'package:travel_app/custom_widgets/drawable.dart';


class delhi extends StatefulWidget {
  @override
  State<delhi> createState() => _delhiState();
}

class _delhiState extends State<delhi> {
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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assests/country/india/delhi/delhi_splash.jpg"),
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 370),
          child: Container(
            height: 300,
            width: 120,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 31, 33, 80),
              borderRadius: BorderRadius.circular(20),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: const Text("DELHI",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'black_future')),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    "Delhi, city and national capital, and union territory,"
                        " north-central India. The city of Delhi actually consists of "
                        "two components: Old Delhi, in the north, the historic city; "
                        "and New Delhi, in the south, since 1947 the capital of India, "
                        "built in the first part of the 20th century as the capital of British India.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),),
              ),
                  Padding(
                    padding: const EdgeInsets.only(left:270, top: 20),
                    child: ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> delhi_states()));

                    },
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(20),
                        fixedSize: MaterialStateProperty.all(Size(92.5,50)),
                      ),
                      child: Row(
                      children: [
                        Text("Visit ->",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 31, 33, 2),
                        ),)
                      ],
                    ),
                    ),
                  ),
            ]),
          ),
        ),
      ),
    );
  }
}
