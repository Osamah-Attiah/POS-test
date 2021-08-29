import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:yerp/helper/app_constants.dart';
import 'package:yerp/helper/custom_scaffold.dart';

class ManageSale extends GetView {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        
        viewName: 'Manage Sale'.tr,
        activeBackButton: true,
        child: Container(
          width: AppConstants.getWidth(context),
          height: AppConstants.getHeight(context),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    'Customer name or number or invoice',
                    style: TextStyle(fontSize: 17, color: Colors.grey[700]),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 168, 89, 0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 0),
                            )
                          ]),
                      width: AppConstants.getWidth(context) * 0.8,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Color.fromRGBO(0, 168, 89, 1.0),
                        obscureText: true,
                        decoration: const InputDecoration(
                          contentPadding: const EdgeInsets.all(1),
                          filled: true,
                          focusColor: Color(0xFFF0F0F0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Color(0xFFF0F0F0))),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                        ),
                      ),
                    ),
                    Icon(
                      FontAwesomeIcons.calendarAlt,
                      color: Color.fromRGBO(0, 168, 89, 0.8),
                      size: 35,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Table(
                  children: [
                    TableRow(children: [
                      Text('Cell 1'),
                      Text('Cell 2'),
                      Text('Cell 3'),
                    ]),
                    TableRow(children: [
                      Text('Cell 4'),
                      Text('Cell 5'),
                      Text('Cell 6'),
                    ])
                  ],
                )
              ],
            ),
          ),
        ));
    // return CustomScaffold(
    //       viewName: 'Manage Sale',
    //       active: true,
    //       child: Container(
    //         width: AppConstants.getWidth(context),
    //         height: AppConstants.getHeight(context),
    //         child: Padding(
    //           padding: EdgeInsets.all(10),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               FittedBox(
    //                 child: Text(
    //                   'Customer name or number or invoice',
    //                   style: TextStyle(
    //                       fontSize: 17,
    //                       color: Colors.grey[700]
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Container(
    //                     height: 40,
    //                     decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.all(Radius.circular(10)),
    //                         color: Colors.white,
    //                         boxShadow: [
    //                           BoxShadow(
    //                             color: Color.fromRGBO(0, 168, 89, 0.5),
    //                             spreadRadius: 2,
    //                             blurRadius: 5,
    //                             offset: Offset(0, 0),
    //                           )
    //                         ]
    //                     ),
    //                     width: AppConstants.getWidth(context) * 0.8,
    //                     child: TextFormField(
    //
    //                       keyboardType: TextInputType.text,
    //                       cursorColor: Color.fromRGBO(0, 168, 89, 1.0),
    //                       obscureText: true,
    //                       decoration: const InputDecoration(
    //                         contentPadding: const EdgeInsets.all(1),
    //                         filled: true,
    //                         focusColor: Color(0xFFF0F0F0) ,
    //                         border: OutlineInputBorder(
    //                             borderRadius: BorderRadius.all(Radius.circular(10)),
    //                             borderSide: BorderSide(color: Color(0xFFF0F0F0))
    //                         ),
    //                         focusedBorder: OutlineInputBorder(
    //                           borderRadius: BorderRadius.all(Radius.circular(10)),
    //                           borderSide: BorderSide(color: Colors.transparent ),
    //                         ),
    //                         enabledBorder: OutlineInputBorder(
    //                             borderRadius: BorderRadius.all(Radius.circular(10)),
    //                             borderSide: BorderSide(color: Colors.transparent)
    //                         ),
    //                       ),
    //
    //
    //                     ),
    //                   ),
    //                   Icon(FontAwesomeIcons.calendarAlt , color: Color.fromRGBO(0, 168, 89, 0.8), size: 35,),
    //
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 20,
    //               ),
    //               Table(
    //                 children: [
    //                   TableRow(children: [
    //                     Text('Cell 1'),
    //                     Text('Cell 2'),
    //                     Text('Cell 3'),
    //
    //                   ]),
    //                   TableRow(children: [
    //                     Text('Cell 4'),
    //                     Text('Cell 5'),
    //                     Text('Cell 6'),
    //                   ])
    //                 ],
    //               )
    //             ],
    //           ),
    //         ),
    //       ));
  }

  TableRow _buildTableRow(Item item) {
    return TableRow(
        key: ValueKey(item.id),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
        ),
        children: [
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.bottom,
            child: SizedBox(
              height: 50,
              child: Center(
                child: Text(item.id.toString()),
              ),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text(item.name),
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text(item.price.toString()),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text(item.description),
            ),
          ),
        ]);
  }
}

class Item {
  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
  });

  int id;
  String name;
  double price;
  String description;
}
