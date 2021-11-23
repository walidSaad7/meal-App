import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_app/CategoryItem.dart';
import 'package:meal_app/data/dummyData.dart';


class CatrgoryScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES.map((catData)=>
      CategoryItem(catData.id,catData.title,catData.color)

      ).toList(),
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
         crossAxisSpacing: 8,
         mainAxisSpacing: 8
     ),
    );
  }
}
