import 'package:flutter/material.dart';

import 'colors.dart';

var borderRadiusCountryDialog = const BorderRadius.only(
  topLeft: Radius.circular(12.0),
  topRight: Radius.circular(12.0),
);

// styles - login screen
var decorationPhoneNumberContainer = BoxDecoration(
  border: Border(
    left: BorderSide(
      color: borderColorLogin,
    ),
    bottom: BorderSide(
      color: borderColorLogin,
    ),
    right: BorderSide(
      color: borderColorLogin,
    ),
  ),
);

// default style of default elevated button
ButtonStyle styleElevatedButton(BuildContext context) => ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(
    Theme.of(context).primaryColor,
  ),
  textStyle: MaterialStateProperty.all<TextStyle>(
    TextStyle(
      color: whiteColor,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  elevation: MaterialStateProperty.all<double>(0.0),
  padding: MaterialStateProperty.all<EdgeInsets>(
    EdgeInsets.symmetric(
      vertical: 12.0,
      horizontal: 30.0,
    ),
  ),
  shape: MaterialStateProperty.all<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          15.0,
        ),
      ),
    ),
  ),
);