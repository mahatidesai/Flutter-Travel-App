import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scroll extends StatefulWidget{
  @override
  State<scroll> createState() => _scrollState();
}

class _scrollState extends State<scroll> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: DraggableScrollableSheet(
          initialChildSize: 0.2, // Adjust initial height ratio
          minChildSize: 0.2, // Minimum draggable height ratio
          maxChildSize: 0.89, // Maximum draggable height ratio
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 253, 196, 30),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  height: MediaQuery.of(context).size.height, // Adjust height as needed
                  padding:  EdgeInsets.all(20.0),
                  child:  Column(
                    children: [
                      Text("Scroll Up",
                        style: TextStyle(fontSize: 16),),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "To fetch country images dynamically in a web application, you would typically use an API that provides access to a database or service containing information about countries along with their associated images. One popular option is the REST Countries API, which provides a wealth of information about countries, including flags (images)",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 31, 33, 20),
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                          child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top:20, right:210, left:1, bottom: 1),
                                  child: Text("Review",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 3,style: BorderStyle.solid),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Color.fromRGBO(255,219,172, 20))
                                    ),
                                    hintText: "Review",
                                    hintStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: ElevatedButton(onPressed: (){},
                                    child: Text("Submit",
                                      style: TextStyle(color: Color.fromRGBO(255,219,172, 20)),),
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(10),
                                      backgroundColor: MaterialStateProperty.all(Color.fromRGBO(0, 31, 33, 20),),
                                    ),),
                                )
                              ])
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );

  }
}