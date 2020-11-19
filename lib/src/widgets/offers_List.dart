import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_queen/src/models/offers.dart';
//import 'package:pizza_queen/src/models/products.dart';
//import 'package:pizza_queen/src/widgets/custom_text.dart';
import '../helpers/style.dart';

List<Offers> offersList =[
  Offers(image: "offers.png"),
  Offers(image: "offers2.png")
];

class Offer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 175,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: offersList.length,
          itemBuilder: (_, index){
            return Padding(
              padding: EdgeInsets.fromLTRB(12,14,16,12),
              child: Container(
                height: 175,
                width: 250,
                decoration: BoxDecoration(
                    color: black,
                    boxShadow: [
                      BoxShadow(
                          color: black,
                          offset: Offset(15, 5),
                          blurRadius: 30
                      )
                    ]
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset("images/${offersList[index].image}",fit: BoxFit.fill,),
                  ],
                ) ,
              ),);
          },
        )
    )
    ;
  }
}
