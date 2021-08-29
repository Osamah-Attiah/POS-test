import 'package:flutter/material.dart';

class AppConstants{
  static double getWidth(BuildContext context)=> MediaQuery.of(context).size.width;
  static double getHeight(BuildContext context)=> MediaQuery.of(context).size.height;
  // static Color appPrimaryColor ()=> Color.fromRGBO(46, 49, 145, 1.0);
  static Color appPrimaryColor ()=> Color(0xFF163A5F);
  // static Color appAccentColor ()=> Color.fromRGBO(0, 168, 89, 1.0).withOpacity(0.7);
  static Color appAccentColor ()=> Color(0xFF2AAF74);
}