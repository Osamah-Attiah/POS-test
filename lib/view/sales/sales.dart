import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/app_constants.dart';
import 'package:yerp/helper/custom_app_bar.dart';
import 'package:yerp/helper/custom_scaffold.dart';

class Sales extends GetView {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        viewName: 'sales'.tr,
        activeBackButton: true,
        child: Container(
          width: AppConstants.getWidth(context),
          height: AppConstants.getHeight(context),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: AppConstants.getWidth(context) * 0.8,
                      child: TextFormField(
                        style: TextStyle(
                            fontSize: 18
                        ),
                        cursorColor: Color.fromRGBO(0, 168, 89, 1.0),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'search your product',
                          contentPadding: const EdgeInsets.all(5),
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
                              borderSide: BorderSide(color: Color.fromRGBO(46, 49, 145, 0.9))
                          ),
                        ),


                      ),
                    ),
                    Icon(FontAwesomeIcons.searchPlus , size: 20, color: Theme.of(context).accentColor,),
                  ],
                ),

              ],
            ),
          ),
        ));
  }
}

