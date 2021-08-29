import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/app_constants.dart';
import 'package:yerp/helper/custom_scaffold.dart';

class Unit extends GetView {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        viewName: 'unit'.tr,
        activeBackButton: true,
        child: Container(
          width: AppConstants.getWidth(context),
          height: AppConstants.getHeight(context),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Unit')
              ],
            ),
          ),
        ));
  }
}