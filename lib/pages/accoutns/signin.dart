import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/pages/accoutns/otp.dart';
import 'package:page_transition/page_transition.dart';


class singin extends StatefulWidget {
  const singin({ Key? key }) : super(key: key);

  @override
  _singinState createState() => _singinState();
}

class _singinState extends State<singin> {
  bool isClicked = false;
  final _formkey = GlobalKey<FormState>();
  nextpage (BuildContext context)async {
    if (_formkey.currentState!.validate()) {
    setState(() {
      isClicked = true;
       
    });
    await Future.delayed(Duration(seconds: 1)); 
       Navigator.pushReplacement(context, PageTransition(
        child: OtpVerification(),
      type: PageTransitionType.leftToRightWithFade));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
          child: SafeArea(
              child: Form(
                key: _formkey,
                child: Column(
                children: [
                  Image.asset("assets/images/loginpage.png", fit: BoxFit.cover,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    child: Container(
                      child: TextFormField(
                      keyboardType:  TextInputType.number,
                      validator: (value){
                        if (value!.isEmpty){
                            return "please Enter The Number";
                        }
                        else if(value.length != 10){
                          return "Please Enter A Valid Number";
                        }
                          return null;
                      },
                          decoration: InputDecoration(
                            hintText: "Enter Number",
                            labelText: "Number",
                          ),
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Material(
                color: Colors.blue,       
                borderRadius: BorderRadius.circular(isClicked?50: 8),
                      child: InkWell(
                      onTap: () => nextpage(context)
                      ,
                      child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: isClicked?50 : 200,
                      height: 50,
                      child:Center(child: 
                      isClicked?Icon(Icons.done):
                      Text("Login" , style: TextStyle(color: Colors.white),), ) ,
                      
                    ),
                    
                ),
            ),
                  )
                ],
            ),
              ),
          
          ),
      );
  }
}