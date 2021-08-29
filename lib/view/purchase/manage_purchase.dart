import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/custom_scaffold.dart';

class ManagePurchase extends GetView{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScaffold(activeBackButton: false, child: Center(
      child: Text('managePurchase'.tr),
    )) ;
  }
  
  
}