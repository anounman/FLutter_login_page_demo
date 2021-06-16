import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loginpage/pages/logipage.dart';
import 'package:page_transition/page_transition.dart';

class SplaceScreen extends StatefulWidget {

  @override
  _SplaceScreenState createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  void initState() {
    
    Timer(Duration(seconds: 2),
    () => Navigator.pushReplacement(context, PageTransition(child: LoginPage(), 
    type: PageTransitionType.rightToLeft))
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
            child: Image.asset(
            "assets/images/logo.jpg",
            fit: BoxFit.scaleDown,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: CircularProgressIndicator(
            color: Colors.red,
            backgroundColor: Colors.black,
            
          ),
        )
      ],
    );
  }
}