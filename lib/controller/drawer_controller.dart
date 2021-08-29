
import 'package:get/get.dart';
import 'package:yerp/translations/translation.dart';
import 'package:yerp/view/accounts/supplier_payment.dart';
import 'package:yerp/view/category/category.dart';
import 'package:yerp/view/customer/add_customer.dart';
import 'package:yerp/view/manage_sale/manage_sale.dart';
import 'package:yerp/view/product/product.dart';
import 'package:yerp/view/profile/profile.dart';
import 'package:yerp/view/purchase/purchase.dart';
import 'package:yerp/view/reports/sales_report.dart';
import 'package:yerp/view/sales/sales.dart';
import 'package:yerp/view/stocks/stock_report.dart';
import 'package:yerp/view/supplier/supplier.dart';
import 'package:yerp/view/unit/unit.dart';

class DrawerAppController extends GetxController{
  changeLocaleLanguage (){

    if(LocaleString.phoneLocale == LocaleString.arabicLocale){
      LocaleString.phoneLocale = LocaleString.englishLocale;
      Get.updateLocale(LocaleString.phoneLocale);

    }else{

      LocaleString.phoneLocale = LocaleString.arabicLocale;
      Get.updateLocale(LocaleString.phoneLocale);

    }

  }

  changeView(String switchView){
    switch(switchView){
      case 'salesView':
        Get.off(Sales());
        break;
      case 'manageSaleView':
        Get.off(ManageSale());
        break;
      case 'purchaseView':
        Get.off(Purchase());
        break;
      case 'productView':
        Get.off(Product());
        break;
      case 'supplierView':
        Get.off(Supplier());
        break;
      case 'customerView':
        Get.off(Customer());
        break;
      case 'accountsView':
        Get.off(Accounts());
        break;
      case 'stockView':
        Get.off(Stock());
        break;
      case 'reportsView':
        Get.off(Reports());
        break;
      case 'categoryView':
        Get.off(Category());
        break;
      case 'unitView':
        Get.off(Unit());
        break;
      case 'profileView':
        Get.off(Profile());
        break;

    }
  }
  // changeView(int switchView){
  //   switch(switchView){
  //     case 1:
  //       Get.off(Sales());
  //       break;
  //     case 2:
  //       Get.off(ManageSale());
  //       break;
  //     case 3:
  //       Get.off(Purchase());
  //       break;
  //     case 4:
  //       Get.off(Supplier());
  //       break;
  //     case 5:
  //       Get.off(Customer());
  //       break;
  //     case 6:
  //       Get.off(Accounts());
  //       break;
  //     case 7:
  //       Get.off(Stock());
  //       break;
  //     case 8:
  //       Get.off(Reports());
  //       break;
  //     case 9:
  //       Get.off(Category());
  //       break;
  //     case 10:
  //       Get.off(Unit());
  //       break;
  //     case 11:
  //       Get.off(Profile());
  //       break;
  //
  //   }
  // }

}