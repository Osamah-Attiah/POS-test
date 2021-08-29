import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:yerp/controller/drawer_controller.dart';

class AppDrawerCard extends GetView {
  String? cardName;
  IconData? cardIcon;
  VoidCallback? goToView;

  AppDrawerCard({this.cardName, this.cardIcon , this.goToView});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        cardName!.tr,
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500 , color: Colors.white),
      ),
      trailing: Icon(cardIcon , size: 25 , color: Colors.white,),
      onTap: ()=> goToView!(),

    );
  }
}
