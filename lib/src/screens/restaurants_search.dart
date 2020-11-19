import 'package:flutter/material.dart';
import 'package:pizza_queen/src/helpers/screen_navigation.dart';
import 'package:pizza_queen/src/helpers/style.dart';
import 'package:pizza_queen/src/providers/app.dart';
import 'package:pizza_queen/src/providers/product.dart';
import 'package:pizza_queen/src/providers/restaurant.dart';
import 'package:pizza_queen/src/screens/restaurant.dart';
import 'package:pizza_queen/src/widgets/custom_text.dart';
import 'package:pizza_queen/src/widgets/loading.dart';
import 'package:pizza_queen/src/widgets/product.dart';
import 'package:pizza_queen/src/widgets/restaurant.dart';
import 'package:provider/provider.dart';

class RestaurantsSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restaurantProvider = Provider.of<RestaurantProvider>(context);
    final productProvider = Provider.of<ProductProvider>(context);
    final app = Provider.of<AppProvider>(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        backgroundColor: white,
        leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: CustomText(
          text: "Restaurants",
          size: 20,
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
        ],
      ),
      body: app.isLoading
          ? Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Loading()],
        ),
      )
          : restaurantProvider.searchedRestaurants.length < 1
          ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.search,
                color: grey,
                size: 30,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomText(
                text: "No Restaurants Found",
                color: grey,
                weight: FontWeight.w300,
                size: 22,
              ),
            ],
          )
        ],
      )
          : ListView.builder(
          itemCount: restaurantProvider.searchedRestaurants.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () async {
                  app.changeLoading();
                  await productProvider.loadProductsByRestaurant(
                      restaurantId: restaurantProvider
                          .searchedRestaurants[index].id);
                  app.changeLoading();

                  changeScreen(
                      context,
                      RestaurantScreen(
                        restaurantModel: restaurantProvider
                            .searchedRestaurants[index],
                      ));
                },
                child: RestaurantWidget(
                    restaurant:
                    restaurantProvider.searchedRestaurants[index]));
          }),
    );
  }
}