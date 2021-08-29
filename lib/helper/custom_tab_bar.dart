
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CustomTabBar extends GetView{
  late String barName;

  CustomTabBar({required this.barName});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Tab(
      child: FittedBox(
        child: Text(
          barName.tr,
          style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
  
}