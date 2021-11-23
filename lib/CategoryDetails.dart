import 'package:flutter/material.dart';
import 'package:meal_app/data/dummyData.dart';
import 'package:meal_app/mealItem.dart';



class CategoryDetails extends StatefulWidget {
  static const String routName='categoryDetails';

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {


  @override
  Widget build(BuildContext Context) {
    final arg=ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final CategoryId=arg['id'];
    final CategoryTitle=arg['title'];
    final CategoryMeals=DUMMY_MEALS.where((element){

      return element.categories.contains(CategoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(CategoryTitle!),
        toolbarHeight: 80,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        elevation: 10,
      ),
      body: ListView.builder(itemBuilder: (buildContext,index){
        return MealItem(
          id: CategoryMeals[index].id,
          image:CategoryMeals[index].imageUrl,
            duration:CategoryMeals[index].duration,
            complexity:CategoryMeals[index].complexity,
            affordability:CategoryMeals[index].affordability,
          title: CategoryMeals[index].title,
        );

      },itemCount:CategoryMeals.length ,),

    );

  }
}
