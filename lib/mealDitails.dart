import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/data/dummyData.dart';

class MealDetails extends StatelessWidget {
static const String routeName='md';
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final mealTitle=args['title'];
    final mealID=args['id'];
    final SlectedMeal=DUMMY_MEALS.firstWhere((meal)=>meal.title==mealTitle );
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(mealTitle!),
        toolbarHeight: 80,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        elevation: 10,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(SlectedMeal.imageUrl),
          ),
          Container(
            padding: EdgeInsets.all(10),
           child: Text('ingredients',style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.w600,
             color: Colors.black
           ),)
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border:   Border.all(color:Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 150,
            width: 300,
            child: ListView.builder(itemBuilder: (buildContext,index){
              return Card(
                color: Colors.yellow,
                child: Text(SlectedMeal.ingredients[index]),
              );

            },itemCount: SlectedMeal.ingredients.length,),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Steps',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black
            ),)
        ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border:   Border.all(color:Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 150,
            width: 300,
            child: ListView.builder(itemBuilder: (buildContext,index){
              return Card(
                color: Colors.yellow,
                child: Text(SlectedMeal.steps[index]),
              );


            },itemCount: SlectedMeal.steps.length,),
          )
        ],
      ),

    );
  }
}
