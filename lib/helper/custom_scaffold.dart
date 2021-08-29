import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/app_drawer.dart';

import 'custom_app_bar.dart';

class CustomScaffold extends GetView {

  Widget? child;
  DateTime? backButtonTimer;
  bool? activeBackButton;
  Color? backGroundColor;
  String? viewName ;
  bool? activeDrawer;

  CustomScaffold({@required this.activeBackButton , @required this.child , this.backGroundColor  , this.viewName = '' , this.activeDrawer = true});

  CustomAppBar customAppBar = CustomAppBar();
  
  Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now();
    bool? backButton = backButtonTimer == null ||
        currentTime.difference(backButtonTimer!) > Duration(seconds: 3);

    if (backButton && activeBackButton == true) {
      backButtonTimer = currentTime;
      Fluttertoast.showToast(
          msg: 'exitFromApp'.tr,
          backgroundColor: Color.fromRGBO(46, 49, 145, 1.0),
          gravity: ToastGravity.BOTTOM);
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: Scaffold(
              // appBar: V.customAppBar(context, this.viewName),
              appBar: viewName != '' ? customAppBar.customAppBar(context, viewName) : null,
              drawer: activeDrawer == true ? AppDrawer() : null,
              resizeToAvoidBottomInset: false,
              backgroundColor: backGroundColor,
              body: child!,
            )),
        onWillPop:  onWillPop);
  }
}