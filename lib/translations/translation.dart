import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yerp/translations/arabic.dart';
import 'package:yerp/translations/english.dart';

class LocaleString  extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'ar': ArabicLang.ar,
    'en': EnglishLang.en,
  };


  static Locale  arabicLocale   = Locale('ar' , ' ');
  static Locale  englishLocale  = Locale('en' , ' ');
  static Locale  phoneLocale     = englishLocale;

}