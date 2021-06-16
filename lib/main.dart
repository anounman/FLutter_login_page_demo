import "package:flutter/material.dart";
import 'package:loginpage/pages/accoutns/signin.dart';
import 'package:loginpage/pages/logipage.dart';
import 'package:loginpage/pages/splacescreen.dart';


void main()
{
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplaceScreen()
    );
  }
}