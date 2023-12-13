import 'package:flutter/material.dart';
import 'package:flutter_guis/sales_order/application/color_coat.dart';
import 'package:flutter_guis/sales_order/application/customer.dart';
import 'package:flutter_guis/sales_order/application/dates.dart';
import 'package:flutter_guis/sales_order/application/item_desc.dart';
import 'package:flutter_guis/sales_order/application/items.dart';
import 'package:flutter_guis/sales_order/application/prod_order.dart';
import 'package:flutter_guis/sales_order/application/qty.dart';
import 'package:flutter_guis/sales_order/application/so_name.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      print(constraint.maxHeight / 15.0 +
          constraint.maxHeight / 15.0 * 4.0 +
          constraint.maxHeight / 15.0 +
          constraint.maxHeight / 15.0 +
          constraint.maxHeight / 15.0 * 3.0 +
          constraint.maxHeight / 15.0 +
          constraint.maxHeight / 15.0 * 3.0 +
          constraint.maxHeight / 15.0);
      print(constraint.maxHeight);

      return Column(
        children: [
          SONameWidget(
              widgetWidth: constraint.maxWidth,
              widgetHeight: constraint.maxHeight / 15.0),
          CustWidget(
              widgetWidth: constraint.maxWidth,
              widgetHeight: constraint.maxHeight / 15.0 * 4.0),
          PrdOrderWidget(
              widgetWidth: constraint.maxWidth,
              widgetHeight: constraint.maxHeight / 15.0),
          ItemDropdownWidget(
              widgetWidth: constraint.maxWidth,
              widgetHeight: constraint.maxHeight / 15.0),
          ItemDescTxtBox(
              width: constraint.maxWidth,
              height: constraint.maxHeight / 15.0 * 3.0),
          QtyWidget(
              width: constraint.maxWidth, height: constraint.maxHeight / 15.0),
          DatesWidget(
              width: constraint.maxWidth,
              height: constraint.maxHeight / 15.0 * 3.0),
          ColorCoatWidget(
              width: constraint.maxWidth, height: constraint.maxHeight / 16.0),
        ],
      );
    });
  }
}
