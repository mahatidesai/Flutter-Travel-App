import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_app/custom_widgets/btn_style.dart';

class profile extends StatefulWidget
{
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  File? pickedImage;
  //showing an alert box
  showAlertBox(){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
              title: Text("Pick Image From"),
              insetPadding: EdgeInsets.symmetric(horizontal: 40),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    onTap:(){
                      pickImage(ImageSource.camera);
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.camera),
                    title: Text("Camera"),
                  ),
                  ListTile(
                    onTap: (){
                      pickImage(ImageSource.gallery);
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.image),
                    title: Text("Gallery"),
                  )
                ],
              ),
            );
        });
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
      title: Text("Profile",
      style: TextStyle(color: Colors.white),),
  backgroundColor: Color.fromRGBO(0, 31, 33, 20),
  ),
  body:
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(0, 31, 33,20),
        child: Column(
          children: [
            InkWell(
              child: pickedImage!=null? CircleAvatar(radius: 70,
                backgroundImage: FileImage(pickedImage!),
            ): CircleAvatar(radius: 70,
        backgroundColor: Color.fromRGBO(255,219,172, 20),
        child: Icon(Icons.account_circle_sharp,
        size: 140,
        color: Color.fromRGBO(0, 31, 33, 20),),
      ),
            onTap: (){
                showAlertBox();
            },),
            const Padding(
              padding: EdgeInsets.only(top:40, bottom:10, right: 30, left: 30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3,style: BorderStyle.solid),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(255,219,172, 20))
                  ),
                    hintText: "Username",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top:20, bottom:10, right: 30, left: 30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3,style: BorderStyle.solid),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(255,219,172, 20))
                  ),
                  hintText: "Phone",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const btn_style(btnName: "Save"),
            // Image(image: NetworkImage(""))
          ],

        ),

      ),
  );
  }
  pickImage(ImageSource imageSource) async{
    try{
      final photo = await ImagePicker().pickImage(source: imageSource);
      if(photo==null)return;
      final tempImage= File(photo.path);
      setState(() {
            pickedImage = tempImage;
      });
    }
    catch(ex)
    {
      log(ex.toString());
    }
  }
}
