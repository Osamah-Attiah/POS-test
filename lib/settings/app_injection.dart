import 'package:get/get.dart';
import 'package:yerp/controller/drawer_controller.dart';
import 'package:yerp/controller/login_controller.dart';

class AppInjection extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LogInController());
    // Get.lazyPut(() => DrawerAppController());
  }

}