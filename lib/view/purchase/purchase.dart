import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/app_constants.dart';
import 'package:yerp/helper/custom_app_bar.dart';
import 'package:yerp/helper/custom_scaffold.dart';
import 'package:yerp/helper/custom_tab_bar.dart';
import 'package:yerp/helper/view_tabs.dart';
import 'package:yerp/view/purchase/manage_purchase.dart';

import 'add_purchase.dart';

class Purchase extends GetView {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        viewName: 'purchase'.tr,
        activeBackButton: true,
        child: Container(
          width: AppConstants.getWidth(context),
          height: AppConstants.getHeight(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10 ),
            child: ViewTabs(
              tabLength: 2,
              listOfTabs: [
                CustomTabBar(barName: 'addPurchase'),
                CustomTabBar(barName: 'managePurchase'),
                
              ],
              listOfView: [
                AddPurchase(),
                ManagePurchase(),
              ],
            ),
          ),
        ));
  }
}

