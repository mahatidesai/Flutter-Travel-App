import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/country/delhi_info/humayu.dart';

class states extends StatelessWidget
{
  final String url;
  final String place;
  states(
      this.url,
      this.place
      );
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(45),
        decoration: BoxDecoration(
        color:Color.fromRGBO(255,253,196, 90),
        borderRadius: BorderRadius.circular(150)
        ),
        child:
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> humayu(place,url)));
                },
              child: Container(
                alignment: Alignment.bottomCenter,
              height: 490,
              width: 310,
              decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(url,)
                )
              ),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(place,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'black_future',
                      fontSize: 40,
                    ),),

                ),
              ),
            )

        );

  }
}