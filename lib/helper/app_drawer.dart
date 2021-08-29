import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:yerp/controller/drawer_controller.dart';
import 'package:yerp/helper/app_constants.dart';
import 'package:yerp/helper/app_drawer_card.dart';
import 'package:yerp/translations/translation.dart';

class AppDrawer extends GetView {

  DrawerAppController _drawerAppController = Get.put(DrawerAppController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: AppConstants.getWidth(context),
        height: AppConstants.getHeight(context),
          color: Theme.of(context).primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: AppConstants.getWidth(context),
                height: 150,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Jason Henrry" , style: TextStyle(
                            color: Colors.white),),
                          Text("JJason@email.com" , style: TextStyle(
                            color: Colors.white
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),

              ),
              // Divider(color: Colors.white, thickness: 0.3,),
              
              AppDrawerCard(
                cardName: 'sales',
                cardIcon: FontAwesomeIcons.dollarSign,
                goToView: ()=> _drawerAppController.changeView('salesView'),
              ),
              AppDrawerCard(
                cardName: 'manage_sale',
                cardIcon: FontAwesomeIcons.buffer,
                goToView: ()=> _drawerAppController.changeView('manageSaleView'),
              ),
              AppDrawerCard(
                cardName: 'purchase',
                cardIcon: FontAwesomeIcons.cartPlus,
                goToView: ()=> _drawerAppController.changeView('purchaseView'),
              ),
              AppDrawerCard(
                cardName: 'product',
                cardIcon: FontAwesomeIcons.shoppingBag,
                goToView: ()=> _drawerAppController.changeView('productView'),
              ),
              AppDrawerCard(
                cardName: 'supplier',
                cardIcon: FontAwesomeIcons.userTie,
                goToView: ()=> _drawerAppController.changeView('supplierView'),
              ),
              AppDrawerCard(
                cardName: 'customer',
                cardIcon: FontAwesomeIcons.peopleArrows,
                goToView: ()=> _drawerAppController.changeView('customerView'),
              ),
              AppDrawerCard(
                cardName: 'accounts',
                cardIcon: FontAwesomeIcons.users,
                goToView: ()=> _drawerAppController.changeView('accountsView'),
              ),
              AppDrawerCard(
                cardName: 'stocks',
                cardIcon: FontAwesomeIcons.boxes,
                goToView: ()=> _drawerAppController.changeView('stockView'),
              ),
              AppDrawerCard(
                cardName: 'reports',
                cardIcon: FontAwesomeIcons.receipt,
                goToView: ()=> _drawerAppController.changeView('reportsView'),
              ),
              AppDrawerCard(
                cardName: 'category',
                cardIcon: FontAwesomeIcons.list,
                goToView: ()=> _drawerAppController.changeView('categoryView'),
              ),
              AppDrawerCard(
                cardName: 'unit',
                cardIcon: FontAwesomeIcons.rulerCombined,
                goToView: ()=> _drawerAppController.changeView('unitView'),
              ),
              Divider(color: Theme.of(context).accentColor, thickness: 0.3,),
              AppDrawerCard(
                cardName: 'profile',
                cardIcon: FontAwesomeIcons.user,
                goToView: ()=> _drawerAppController.changeView('profileView'),
              ),
              AppDrawerCard(
                cardName: 'logOut',
                cardIcon: FontAwesomeIcons.signOutAlt,
                goToView: (){},
              ),
              ListTile(
                title: Text(
                  'language'.tr,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500 , color: Colors.white),
                ),
                trailing: Container(
                  width: 40,
                  height: 40,
                  child: CupertinoSwitch(
                    onChanged: (v){_drawerAppController.changeLocaleLanguage();},
                    value: LocaleString.phoneLocale == LocaleString.arabicLocale ? false : true,
                  ),
                ),

              )

            ],
          ),
        )
      ),
    );
  }
}
