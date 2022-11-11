import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'MapScreen.dart';
void main()
{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp( MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home:  MapScreen(),
    );
  }
}