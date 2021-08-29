import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/custom_scaffold.dart';

class AddPurchase extends GetView{
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(activeBackButton: false, child: Center(
      child: Text('addPurchase'.tr),
    )) ;
  }
  
}
