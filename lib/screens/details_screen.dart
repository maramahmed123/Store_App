

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {

  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: kPrimaryColor,
     appBar: detailsAppBar(context),
     body: DetailsBody(
       product: product,
     ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
     backgroundColor: kBackgroundColor,
     elevation: 0,
     leading: IconButton(
       padding: EdgeInsets.only(right: kDefaultpadding),
       icon: Icon(
         Icons.arrow_back,
         color: kPrimaryColor,),
       onPressed: () {
         Navigator.pop(context);
       } ,
     ),
     centerTitle: false,
     title: Text('رجوع',
     style :Theme.of(context).textTheme.bodyText2,),
     actions: [IconButton(onPressed: (){

       context.locale == Locale('en', 'US')?
      context.locale = Locale('ar', 'EG'):context.locale =Locale('en', 'US');

     }, icon: Icon(Icons.local_activity))],
     );
  }
}