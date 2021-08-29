import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/custom_scaffold.dart';

class SupplierLedger extends GetView {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        activeBackButton: false,
        child: Center(
          child: Text('supplierLedger'.tr),
        ));
  }
}
