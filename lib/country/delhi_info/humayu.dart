import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/custom_widgets/scroll.dart';

class humayu extends StatelessWidget {
  final String url_name;
  final String place_name;
  humayu(
      this.place_name,
      this.url_name,
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromRGBO(0, 31, 33, 20),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(0, 31, 33, 20),
        child: Stack(alignment: Alignment.center, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                place_name,
                style: TextStyle(
                  fontFamily: 'black_future',
                  fontSize: 40,
                  color: Color.fromRGBO(255, 253, 196, 10),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                    url_name),
                  ),
                ),
                height: 490,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color.fromRGBO(255, 253, 196, 10),
                        size: 40,
                      ),
                      Text(
                        "Delhi",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 253, 196, 10),
                            fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        scroll()
        ]),
      ),
    );
  }


}
