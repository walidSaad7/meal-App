import 'package:flutter/material.dart';

import 'CategoryDetails.dart';

class  CategoryItem extends StatelessWidget {
String id;
String title;
Color color;
CategoryItem(this.id,this.title,this.color,);
void SlectedCat(context){
  Navigator.pushNamed(context, CategoryDetails.routName,
      arguments:{
         'id':id,
        'title':title
      });
}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        SlectedCat(context);
      },
        splashColor: color,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(15),
          child: Text(title,style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 17
          ),),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15)
          ),
        ));
  }
}
