import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {

  TextFieldInput({this.hintTxt});
  String hintTxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue, //this has no effect
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: hintTxt,
        ),
      ),
    );
  }
}