import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pizza_queen/src/models/products.dart';
import 'package:carousel_pro/carousel_pro.dart';
//import 'package:pizza_queen/src/widgets/featured_products.dart';
import 'package:pizza_queen/src/widgets/title.dart';
import '../helpers/style.dart';
class Details extends StatefulWidget {
  final Product product;


  Details({@required this.product});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: Stack(
                children: <Widget>[
                  Carousel(
                    images: [
                      AssetImage('images/${widget.product.image}'),
                      AssetImage('images/${widget.product.image}'),
                      AssetImage('images/${widget.product.image}')
                    ],
                    dotBgColor: black,
                    dotColor: yellow,
                    dotIncreasedColor: red,
                    dotIncreaseSize: 1.5,
                    autoplay: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back,color: yellow,),
                        onPressed: (){Navigator.pop(context);},
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: <Widget>[
                                  Image.asset("images/cart.png",color:yellow,width: 30,height: 30,),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 5,
                              bottom: 4,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: yellow,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color:grey,
                                            offset: Offset(2,1),
                                            blurRadius: 3
                                        )
                                      ]
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4,right: 4),
                                    child: CustomText(text: "2",color: red,size: 18,weight: FontWeight.bold,),
                                  )),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                  Positioned(
                    right: 10,
                    bottom: 55,
                    child: Container(
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: yellow,
                            offset: Offset(2,1),
                            blurRadius: 3
                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Icon(
                          Icons.favorite,
                          size:22,
                          color: red,
                        ),
                      ),
                    ),
                  ),
                  /* Align(
                    alignment:Alignment.bottomRight,
                  ) */
                  ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomText(text: widget.product.name,color: yellow, size: 26 , weight: FontWeight.normal,),
                CustomText(text: "\$" + widget.product.price.toString(),color: yellow,size: 18 , weight: FontWeight.bold,),

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.remove,color:yellow,size: 25,), onPressed: () {}),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(28,12,28,12),
                      child: CustomText(text: "Add to Cart", color: yellow,size: 24,weight: FontWeight.w600,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.add,size: 25,color: yellow,), onPressed: () {}),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}