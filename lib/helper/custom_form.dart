import 'package:flutter/material.dart';

import 'app_constants.dart';

class CustomForm extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstants.getWidth(context) * 0.9,
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.text,
        cursorColor: Color.fromRGBO(0, 168, 89, 1.0),
        obscureText: true,
        decoration: const InputDecoration(
          contentPadding: const EdgeInsets.all(15),
          filled: true,
          focusColor: Color(0xFFF0F0F0) ,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xFFF0F0F0))
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color.fromRGBO(0, 168, 89, 1.0) ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color.fromRGBO(0, 168, 89, 1.0))
          ),
        ),


      ),
    );
  }
}
