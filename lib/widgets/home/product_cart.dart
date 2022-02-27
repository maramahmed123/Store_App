import 'package:flutter/material.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/screens/details_screen.dart';

import '../../constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var caption2 = Theme.of(context).textTheme.caption;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultpadding,
        vertical: kDefaultpadding / 2,
      ),
      height: 190.0,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(
                product: products[itemIndex],
              ),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 25.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultpadding,
                ),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 136.0,
                width: size.width - 280,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                      ),
                      child: Text(
                        product.subTitle,
                        style: caption2,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultpadding),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultpadding * 1.2, //30 px padding
                          vertical: kDefaultpadding / 5, // 5 px padding
                        ),
                        decoration: BoxDecoration(
                          color: kSecoundryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text('السعر:\$${product.price}'),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardData extends StatelessWidget {
  const CardData({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    MediaQueryData size = MediaQuery.of(context);
    var caption2 = Theme.of(context).textTheme.caption;

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              product: products[itemIndex],
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        child: Container(
          height: size.size.height * .25,
          width: size.size.width * .8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 25,
                color: Colors.black12,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SizedBox(
                  height: size.size.height * .2,
                  width: size.size.width * .25,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      product.title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      product.subTitle,
                      style: caption2,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultpadding * 1.2, //30 px padding
                        vertical: kDefaultpadding / 5, // 5 px padding
                      ),
                      child: Container(
                        // height: size.size.height * .07,
                        // width: size.size.width * .19,
                        decoration: BoxDecoration(
                          color: kSecoundryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child:
                              Center(child: Text('السعر:\$${product.price}')),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
