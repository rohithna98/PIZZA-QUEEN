import 'package:flutter/material.dart';
import 'package:pizza_queen/src/helpers/screen_navigation.dart';
import 'package:pizza_queen/src/helpers/style.dart';
import 'package:pizza_queen/src/screens/register.dart';
import 'package:pizza_queen/src/widgets/title.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/1.jpg",width: 240,height: 240,),
              ],
            ),

              // title: CustomText(text:"Welcome to Pizza Queen",color: yellow,weight: FontWeight.normal,),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: yellow),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Your Mail",
                        hintStyle: TextStyle(color: yellow),
                        icon: Icon(Icons.email,color: yellow,)
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: yellow),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(color: yellow),
                        icon: Icon(Icons.lock,color: yellow,)

                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    color: grey,
                    border: Border.all(color: yellow),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(padding: EdgeInsets.only(top: 10,bottom: 10,left: 4,right: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CustomText(text: "Login",color: yellow,size: 22,)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),

            GestureDetector(
              onTap: (){
                changeScreen(context, RegistrationScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomText(text: "Not Registered yet,",color: yellow,size: 20,weight: FontWeight.normal,),
                  CustomText(text: "Register Here",size: 20,color: yellow,weight: FontWeight.bold,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
