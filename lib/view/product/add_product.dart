import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/app_constants.dart';
import 'package:yerp/helper/custom_scaffold.dart';

class AddProduct extends GetView {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        activeBackButton: false,
        child: Center(
          child: Text('addProduct'.tr),
        ));
  }
}
