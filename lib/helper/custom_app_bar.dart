import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomAppBar {
   customAppBar(BuildContext context , String? viewName) => AppBar(
    centerTitle: true,
    backgroundColor: Theme.of(context).accentColor,
    title: Text(viewName!),
  );
}