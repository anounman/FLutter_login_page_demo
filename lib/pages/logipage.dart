import 'package:flutter/material.dart';
import 'package:loginpage/pages/accoutns/signin.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatelessWidget {
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    void _ontap (){

    }
    return Container(
           child: Scaffold(
            backgroundColor: Colors.black,
            bottomNavigationBar: BottomAppBar(
              color: Colors.blue,
              child:Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                MaterialButton(onPressed: () { 
                   Navigator.pushReplacement(context, PageTransition(child: singin(), 
    type: PageTransitionType.rightToLeft));
                },
                child: Text("Sign In" , style: TextStyle(color: Colors.white,
                fontSize: 20),),
                ),
                MaterialButton(onPressed: () { 
                },
                child: Text("Sign Up" , style: TextStyle(color: Colors.white,
              fontSize: 20),),
                ),
              ],)
            ) ,
            body: SafeArea(
            child: Column(children: [
           Image.asset(
              "assets/images/logo.jpg",
              //  fit: BoxFit.cover,
               width: 400,
               height: 300,
               
           ),
              
         ]
         ,),
            ),
        
       ),
       
    );
  }
}