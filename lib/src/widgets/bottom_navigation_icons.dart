import 'package:flutter/material.dart';
import 'package:pizza_queen/src/widgets/title.dart';

import '../helpers/style.dart';

class BottomNavIcon extends StatelessWidget {
  final String image;
  final String name;
  final Function onTap;

  const BottomNavIcon({Key key, this.image, this.name, this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap ?? null,
        child: Column(
          children: <Widget>[
            Image.asset("images/$image",width: 20,height: 20,color: yellow,),
            SizedBox(height: 2,),
            CustomText(text: name, color: yellow,)
          ],
        ),
      ),
    );
  }
}
