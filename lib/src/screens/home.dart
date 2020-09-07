import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pizza_queen/src/helpers/screen_navigation.dart';
import 'package:pizza_queen/src/screens/cart.dart';
import 'file:///C:/Users/HP/AndroidStudioProjects/pizza_queen/lib/src/helpers/style.dart';
import 'package:pizza_queen/src/widgets/bottom_navigation_icons.dart';
import 'package:pizza_queen/src/widgets/featured_products.dart';
import 'package:pizza_queen/src/widgets/offers_List.dart';
import 'package:pizza_queen/src/widgets/title.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                  text: "What would you like to eat?",
                    size: 18,
                    color: yellow,
                  )),
                Stack(
                  children: <Widget>[
                    IconButton(icon: new Icon(Icons.notifications_none),disabledColor: white,
                        onPressed: null),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: grey,
                          offset: Offset(1, 1),
                          blurRadius: 4
                      )
                    ]
                ),
                child: ListTile(
                  leading: Icon(Icons.search, color: yellow,),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Find Food",
                      border: InputBorder.none
                    ),
                  ),
                  trailing: Icon(Icons.filter_list,color: yellow,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Featured Items",size: 20,color: yellow,
              ),
            ),
            Featured(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Offers",size: 20,color: yellow,
              ),
            ),
            Offer(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 73,
        color: black,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              BottomNavIcon(
                image: "home.png",
                name: "Home",
              ),

              BottomNavIcon(
                onTap: (){
                  changeScreen(context, ShoppingBag());
                },
                image: "cart.png",
                name: "cart",
              ),

              BottomNavIcon(
                image: "account.png",
                name: "Account",
              ),

            ],
          ),
        ),
      ),
    );
  }
}