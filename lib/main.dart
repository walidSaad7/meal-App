import 'package:flutter/material.dart';
import 'package:meal_app/CategoryDetails.dart';
import 'package:meal_app/HomeScreen.dart';
import 'package:meal_app/MyThemeData.dart';
import 'package:meal_app/mealDitails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:{
        HomeScreen.routeName:(buildContext)=>HomeScreen(),
        CategoryDetails.routName:(buildContext)=>CategoryDetails(),
        MealDetails.routeName:(buildContext)=>MealDetails()

      },
      initialRoute:HomeScreen.routeName ,
    );
  }
}


