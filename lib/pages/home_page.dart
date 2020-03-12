import 'package:flutter/material.dart';
import '../widget/bestseller.dart';
import '../widget/home_top.dart';
import '../widget/searchfield.dart';
import '../widget/food_category.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final textStyle = TextStyle(fontSize: 32.0 ,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top:50.0 ,left:20.0 , right: 20.0),
        children: <Widget>[
          HomeTop(),
          FoodCategory() , 
          SearchFeild() , 
          SizedBox(
            height: 20.0,
          ),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Bestseller" , style: TextStyle(
                fontWeight: FontWeight.bold ,
               fontSize: 24.0 , 
               color: Colors.black),),
              GestureDetector(
                onTap: (){
                  print("Click View all"); 
                  },
                child: Text("View All" , style: TextStyle(
                fontWeight: FontWeight.bold , 
                color: Colors.orangeAccent
              ),
              ),)
            ],
          ) , 
          SizedBox(
            height:20.0
          ),
          BestSeller(),
          SizedBox(height:10.0),
          BestSeller()
        ],
      ),
    ) ; 
  }
}