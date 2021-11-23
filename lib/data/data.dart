import 'dart:ui';

enum Complexity{
  Simple,
  Challenging,
  Hard
}
enum Affordability{
  Affordable,
  Pricey,
  Luxurious
}
class Meal{
  final String id;
  final List<String>categories;
  final String title;
  final String imageUrl;
  final List<String>ingredients;
  final List<String>steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegetarian;
  final bool isVegan;

  Meal({required this.id,
    required  this.categories,
    required this.title,
    required this.affordability,
    required this.isLactoseFree,
    required this.complexity,
    required this.duration,
    required this.imageUrl,
    required this.ingredients,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.steps



  }
      );
}


class Catrgory{
  String id;
  String title;
  Color color;

  Catrgory({required this.id,required this.color,required this.title});
}

