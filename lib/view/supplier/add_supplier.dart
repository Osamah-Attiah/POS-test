
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/custom_scaffold.dart';

class AddSupplier extends GetView {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        activeBackButton: false,
        child: Center(
          child: Text('addSupplier'.tr),
        ));
  }
}

