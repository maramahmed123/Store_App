import 'package:flutter/material.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: kPrimaryColor,
     appBar: homeAppBar(),
     body: HomeBody(),

    );
  }

  AppBar homeAppBar() {
    return AppBar(
     elevation: 0,
     title: Text(" مرحبا بكم بمتجرنا"),
     centerTitle: false,
     actions: [
       IconButton(icon: Icon(Icons.menu) ,onPressed: (){},),
     ],
     

   );
  }
}