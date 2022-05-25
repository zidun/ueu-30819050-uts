import 'package:flutter/material.dart';
import 'package:uts_30819050_ramdan/pages/Dashboard.dart';
import 'package:uts_30819050_ramdan/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Lato",
          textTheme: TEXT_THEME_DEFAULT
      ),
      home: DashboardPages(),
    );
  }
}