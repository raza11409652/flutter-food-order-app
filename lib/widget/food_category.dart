import 'package:flutter/material.dart';

//data
import '../data/category_data.dart';
//model
import '../model/category_model.dart';

//card
import '../widget/food_card.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories=categories; 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
     child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _categories.length,
      itemBuilder: (BuildContext context , int index){
        return FoodCard(
         categoryName: _categories[index].categoryName,
         imagePath: _categories[index].imagePath,
         numberOfItem: _categories[index].numberItem,

        );
      },
    ), 
    );
  }
}