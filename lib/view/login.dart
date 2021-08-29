import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:yerp/controller/login_controller.dart';
import 'package:yerp/helper/app_constants.dart';
import 'package:yerp/helper/custom_form.dart';
import 'package:yerp/helper/custom_scaffold.dart';
import 'package:yerp/view/sales/sales.dart';

class LogIn extends GetView<LogInController> {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        viewName: '',
        activeBackButton: true,
        child: Container(
          color: Theme.of(context).primaryColor,
          width: AppConstants.getWidth(context),
          height: AppConstants.getHeight(context),
          child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 130,
                  width: AppConstants.getWidth(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'welcome'.tr,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(0.7),
                              ),
                            ),
                            GestureDetector(
                              onTap:  controller.changeLocaleLanguage,
                              child: Icon(FontAwesomeIcons.language , size: 40, color: Colors.white,),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20, left: 20),
                        child: FittedBox(
                          child: Text(
                            'signin'.tr,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                      width: AppConstants.getWidth(context),

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: Image.asset(
                              'assets/images/natoc.png',
                              width: AppConstants.getWidth(context) * 0.5,
                            )),
                            const SizedBox(
                              height: 5,
                            ),
                            FittedBox(
                              child: Text(
                                'email'.tr,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey[700]
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomForm(),
                            const SizedBox(
                              height: 5,
                            ),
                            FittedBox(
                              child: Text(
                                'password'.tr,
                                style: TextStyle(
                                  fontSize: 17,
                                    color: Colors.grey[700]
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomForm(),
                            const SizedBox(
                              height: 20,
                            ),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    minimumSize: Size.fromHeight(55),
                                    primary: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    side: BorderSide(
                                      color: AppConstants.appAccentColor(),
                                      width: 2
                                    )
                                ),
                                onPressed: ()=> Get.off(Sales()), child: Text('next'.tr ,style: TextStyle(
                              color: AppConstants.appAccentColor(),
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                            ), )),

                          ],
                        ),
                      ),
                    ),
                  ),

              ],
            ),
         
        ));
  }
}
