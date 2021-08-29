import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/app_constants.dart';
import 'package:yerp/settings/app_injection.dart';
import 'package:yerp/translations/translation.dart';
import 'package:yerp/view/login.dart';
import 'package:yerp/view/manage_sale/manage_sale.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppInjection(),
      locale: LocaleString.phoneLocale,
      translations: LocaleString(),
      // fallbackLocale: Locale('ar' , ' '),
      home: LogIn(),
      theme: ThemeData(
          primaryColor: AppConstants.appPrimaryColor(),
          accentColor: AppConstants.appAccentColor(),
          fontFamily: 'Cairo'),
    );
  }
}
