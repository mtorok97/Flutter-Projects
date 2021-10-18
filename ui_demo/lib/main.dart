import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'introduction_screen_demo.dart';
//import 'package:ui_demo/rich_text.dart';
//import 'package:ui_demo/flexible.dart';
//import 'package:ui_demo/wrap_fittedbox.dart';
//import 'package:ui_demo/splash_snackbar_visibility.dart';
import 'package:ui_demo/spread_operator_status_and_navigation_bar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.amber,
        systemNavigationBarColor: Colors.amber,
    ),
  );
  runApp(const MyApp());
}
