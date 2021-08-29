import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/app_constants.dart';

import 'custom_tab_bar.dart';

class ViewTabs extends GetView{
  late int tabLength;
  late List<CustomTabBar> listOfTabs;
  late List<Widget> listOfView;


  ViewTabs({required this.tabLength,required this.listOfTabs,required this.listOfView});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: this.tabLength,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey[500]),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TabBar(
                  indicator: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  tabs: this.listOfTabs),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              width: AppConstants.getWidth(context),
              child: TabBarView(children: this.listOfView),
            ),
          )
        ],
      ),
    );
  }

}