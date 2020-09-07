import 'package:flutter/material.dart';
import 'package:pizza_queen/src/helpers/screen_navigation.dart';
import 'package:pizza_queen/src/models/products.dart';
import 'package:pizza_queen/src/screens/details.dart';
import 'package:pizza_queen/src/widgets/title.dart';
import '../helpers/style.dart';

List<Product> productsList =[
  Product(name:"Chicken Pizza",price:5.99,rating:4.0,vendor: "GoodFood",wishList: true,image: "20.jpg"),
  Product(name:"Cool Drinks",price:3.54,rating:4.0,vendor: "GoodFood",wishList: true,image: "24.jpg"),
  Product(name:"Paneer Pizza",price:4.99,rating:4.0,vendor: "GoodFood",wishList: true,image: "20.jpg")
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index){
            return Padding(
              padding: EdgeInsets.fromLTRB(12,14,16,12),
              child: GestureDetector(
                onTap: (){
                  changeScreen(_, Details(product: productsList[index],));
                },
                child: Container(
                  height: 220,
                  width: 200,
                  decoration: BoxDecoration(
                      color: black,
                      boxShadow: [
                        BoxShadow(
                            color: yellow,
                            offset: Offset(15, 5),
                            blurRadius: 30
                        )
                      ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/${productsList[index].image}",height: 130,width: 130,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: productsList[index].name, color: yellow,),
                          ),
                          Padding(padding: EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: black,
                                  boxShadow: [
                                    BoxShadow(
                                        color: grey,
                                        offset: Offset(1, 1),
                                        blurRadius: 4
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: productsList[index].wishList ? Icon(
                                  Icons.favorite_border,
                                  color: red,
                                  size: 19,
                                ) : Icon(
                                  Icons.favorite_border,
                                  color: yellow,
                                  size: 19,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: CustomText(
                                  text: productsList[index].rating.toString(),
                                  color: grey,
                                  size: 14,),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: grey,
                                size: 16,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: CustomText(text: "\$${productsList[index].price.toString()}", color: yellow,weight: FontWeight.bold,),
                          )
                        ],
                      )
                    ],

                  ) ,
                ),
              ),);
          },
        )
    )
    ;
  }
}
