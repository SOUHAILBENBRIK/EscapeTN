import 'package:flutter/material.dart';

class Constants {
  static const String geminiApiKey = "AIzaSyDJ1zQQ1qDWHR-d7JFcco4vb1IAlDxJX9U";
  static const String appName = "EscapeTN";
  static const Color mainColor = Color.fromRGBO(13, 110, 253, 1);
  static double getWidth(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.sizeOf(context).height;
  }
}
