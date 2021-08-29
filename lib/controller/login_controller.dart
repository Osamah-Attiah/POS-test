
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yerp/translations/translation.dart';

class LogInController extends GetxController{


  changeLocaleLanguage (){
      if(LocaleString.phoneLocale == LocaleString.arabicLocale){
        LocaleString.phoneLocale = LocaleString.englishLocale;
        Get.updateLocale(LocaleString.phoneLocale);

      }else{
        LocaleString.phoneLocale = LocaleString.arabicLocale;
        Get.updateLocale(LocaleString.phoneLocale);


      }
  }


}