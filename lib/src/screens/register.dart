import 'package:flutter/material.dart';
import 'package:pizza_queen/src/helpers/screen_navigation.dart';
import 'package:pizza_queen/src/helpers/style.dart';
import 'package:pizza_queen/src/screens/login.dart';
import 'package:pizza_queen/src/widgets/title.dart';
class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                        hintText: "Enter Your Name",
                        hintStyle: TextStyle(color: yellow),
                        icon: Icon(Icons.person,color: yellow,)
                    ),
                  ),
                ),
              ),
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
                        hintText: "Enter Your Phone Number",
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
                      CustomText(text: "Register",color: yellow,size: 22,)
                    ],
                  ),
                ),
              ),
            ),



            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                changeScreen(context, LoginScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomText(text: "Already have a Account,",color: yellow,size: 20,weight: FontWeight.normal,),
                  CustomText(text: "Login Here",size: 20,color: yellow,weight: FontWeight.bold,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
