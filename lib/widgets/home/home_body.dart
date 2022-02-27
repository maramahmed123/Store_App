import 'package:flutter/material.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/screens/details_screen.dart';
import 'package:store_app/widgets/details/details_body.dart';
import 'package:store_app/widgets/home/product_cart.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  height: kDefaultpadding / 2,
                ),
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => CardData(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => DetailsScreen(
                      //       product: products[index],

                      //     ),
                      //   ),
                      // );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
