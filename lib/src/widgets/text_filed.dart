import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final hintText;
  final controller;
  final obscureText;
  const TextFieldWidget(
      {Key key, this.hintText, this.controller, this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,

        // onChanged: (value) {
        //   //Do something with the user input.
        // },
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: TextStyle(color: Colors.black),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
      ),
    );
  }
}
