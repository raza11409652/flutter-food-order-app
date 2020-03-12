import 'package:flutter/material.dart';
  class FoodCard extends StatelessWidget {
    final String categoryName ; 
    final String imagePath ; 
    final int numberOfItem ;

  const FoodCard({ this.categoryName, this.imagePath, this.numberOfItem}); 
    @override
    Widget build(BuildContext context) {
      return Card(
        
        child:Padding(padding: EdgeInsets.all(6.0), 
        child: Row(

        children: <Widget>[
          Image(image:
            AssetImage(imagePath),
          height: 65.0,
          width: 65.0,
          ),
          SizedBox(width: 20.0,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(this.categoryName , style: TextStyle(fontWeight: FontWeight.bold , 
            fontSize:16.0 )),
            Text("$numberOfItem Kinds")
          ],  
          )
        ],         
        ),) 
        
        ,
      );
    }
  }