import 'package:flutter/material.dart';
import 'package:loginpage/pages/homepage.dart';
import 'package:page_transition/page_transition.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({ Key? key }) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
    bool isClicked = false;
  final _formkey = GlobalKey<FormState>();
  nextpage (BuildContext context)async {
    if (_formkey.currentState!.validate()) {
    setState(() {
      isClicked = true;
       
    });
    await Future.delayed(Duration(seconds: 1)); 
       Navigator.pushReplacement(context, PageTransition(
        child: HomePage(),
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
                            return "please Enter The OTP";
                        }
                            return null;
                        
                      },
                          decoration: InputDecoration(
                            hintText: "Enter Your OTP",
                            labelText: "Enter Your OTP",
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
                  ),
            
            
            InkWell(
              onTap: () {
                
              },
              child: Padding(
              padding: const EdgeInsets.only(right: 100, top:10),
              
              child: Text("Resend OTP?", style: TextStyle(color: Colors.blue , fontSize: 15),),
            ))
                ],
            ),
              ),
          
          ),
      );
  }
}