import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/app_constants.dart';
import 'package:yerp/helper/custom_scaffold.dart';
import 'package:yerp/helper/custom_tab_bar.dart';
import 'package:yerp/helper/view_tabs.dart';
import 'package:yerp/view/supplier/add_supplier.dart';
import 'package:yerp/view/supplier/manage_supplier.dart';
import 'package:yerp/view/supplier/supplier_advance.dart';
import 'package:yerp/view/supplier/supplier_ledger.dart';



class Supplier extends GetView {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        viewName: 'supplier'.tr,
        activeBackButton: true,
        child: Container(
          width: AppConstants.getWidth(context),
          height: AppConstants.getHeight(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10 ),
            child: ViewTabs(tabLength: 4, listOfTabs: [
              CustomTabBar(barName: 'addSupplier'),
              CustomTabBar(barName: 'supplierAdvance'),
              CustomTabBar(barName: 'supplierLedger'),
              CustomTabBar(barName: 'manageSupplier'),
            ], listOfView: [
              AddSupplier(),
              SupplierAdvance(),
              SupplierLedger(),
              ManageSupplier(),
            ]),
          ),
        ));
  }
}