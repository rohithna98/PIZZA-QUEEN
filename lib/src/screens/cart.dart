import 'package:flutter/material.dart';
import 'package:pizza_queen/src/helpers/style.dart';
import 'package:pizza_queen/src/models/products.dart';
// import 'package:pizza_queen/src/widgets/featured_products.dart';
import 'package:pizza_queen/src/widgets/title.dart';
class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  Product product =Product(name:"Chicken Pizza",price:5.99,rating:4.0,vendor: "GoodFood",wishList: true,image: "20.jpg");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: black,),onPressed: (){},),
        backgroundColor: yellow,
        elevation: 0,
        centerTitle: true,
        title: CustomText(text: "Cart",size: 22,weight: FontWeight.w600,),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("images/cart.png",color:black,width: 30,height: 30,),
                ),
                Positioned(
                  right: 6,
                  bottom: 5,
                  child: Container(
                      decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: black,
                                offset: Offset(2,1),
                                blurRadius: 3
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4,right: 4),
                        child: CustomText(text: "2",color: yellow,size: 16,weight: FontWeight.bold,),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: black,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 100,
              // width: MediaQuery.of(context).size.width-10,
              decoration: BoxDecoration(
                color: black,
                boxShadow: [
                  BoxShadow(
                    color: red,
                    offset: Offset(3, 5),
                    blurRadius: 50
                  )
                ]
              ),
              child: Row(
                children: <Widget>[
              Image.asset(
                "images/${product.image}",
                height: 200,
                width: 105,
              ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(text: product.name + "\n",style: TextStyle(color: yellow,fontSize: 20)),
                          TextSpan(text: "\$" + product.price.toString() + "\n",style: TextStyle(color: yellow,fontSize: 20,fontWeight: FontWeight.bold)),
                        ]),),

                      SizedBox(
                        width: 57,
                      ),
                      IconButton(icon: Icon(Icons.delete_outline,color: red,size: 35,), onPressed: null)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
