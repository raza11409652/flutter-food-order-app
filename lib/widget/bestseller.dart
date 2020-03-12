import 'package:flutter/material.dart';
class BestSeller extends StatefulWidget {
  @override
  _BestSellerState createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
      children: <Widget>[
        Container(
          height: 200.0,
          width: 400.0,
          child: Image.asset("assets/images/breakfast.jpeg" , fit:BoxFit.cover,),
        ) , 
        Positioned(
          left: 0.0,
          bottom: 0.0,
          child: Container(
          height: 60.0,
          width: 400.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black , Colors.black12
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
            )
          ),
        ),)
      ],
    ),);
  }
}