import 'package:alcsafe_mobile/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pocky Alcometr',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light,
          fontFamily: 'Roboto'),
      home: Scaffold(
        backgroundColor: kBackgroundColor,
      ),
    );
  }
}
