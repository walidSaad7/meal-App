import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/mealDitails.dart';

import 'data/data.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String id;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final String image;
  MealItem(
      {required this.image,
      required this.id,
      required this.title,
      required this.duration,
      required this.complexity,
      required this.affordability});
 String get complexityText {
   return COMP();


  }
  String get affordabilityText{
   return AFF();
  }
  AFF(){
   if(affordability==Affordability.Affordable){
     return'Affordable';
   }if(affordability==Affordability.Pricey){
     return'Pricey';
   }if(affordability==Affordability.Luxurious){
     return'Luxurious';
   }
  }
   COMP(){
    if(complexity==Complexity.Challenging){
      return'Challenging';
    }if(complexity==Complexity.Hard){
      return'HARD';
    }if(complexity==Complexity.Simple){
      return'Simple';
    }
  }
void SlectedItem(context){
   Navigator.pushNamed(context, MealDetails.routeName,
       arguments:{
     'title':title,
         'id':id
       });
}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        SlectedItem(context);

      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),

        ),
        elevation: 4,
        margin:EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ) ,
                  child:Image.network(image,height: 200,width: double.infinity,fit: BoxFit.cover,),
                ),
                Container(
                  width: 220,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5)
                  ,
                  child: Text(title,style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    overflow: TextOverflow.fade
                  ),),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.alarm),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration')
                    ],

                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$complexityText')

                    ],
                  ),
                ),
                Expanded(child: Row(
                  children: [
                    Icon(Icons.attach_money),
                    SizedBox(width: 6,),
                    Text('$affordabilityText')
                  ],

                )),
              ],
            )

          ],
        ),
      ),
    );
  }
}
