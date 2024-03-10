import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textfield extends StatefulWidget
{
  final String hint;
  final TextEditingController? controller;
  textfield(
      this.hint,
      this.controller,
  );
  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
        border: const OutlineInputBorder(
        borderSide: BorderSide(width: 3,style: BorderStyle.solid),
        ),
        focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(255,219,172, 20))
        ),
        hintText: widget.hint,
        hintStyle: const TextStyle(color: Colors.white),
        ),
  );
  }
}


