/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:doctor/utilities/constancePage.dart' as style;

const appColor = Color(0xFF4A148C);
const itemColor = Color(0xFFCE93D8);

contentButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFFCE93D8),
          Color(0xFFCE93D8),
        ],
      ));
}

roundedButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFFCE93D8),
          Color(0xFFCE93D8),
        ],
      ));
}

roundedButtonWithOpacityStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFFCE93D8).withOpacity(0.4),
          Color(0xFFCE93D8).withOpacity(0.4),
        ],
      ));
}

roundedBorderButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      border: Border.all(color: Colors.white));
}

roundedBorderButtonStyle2() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );
}

itemColorButtonStyle() {
  return BoxDecoration(
    color: style.itemColor,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );
}

appBarButtonStyle() {
  return BoxDecoration(
    border: Border.all(color: Colors.grey.shade300),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );
}

appBarItemClrButtonStyle() {
  return BoxDecoration(
    border: Border.all(color: style.itemColor),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );
}
