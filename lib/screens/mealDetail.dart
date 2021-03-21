import '../models/meal.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            meal.title,
            style:
                TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red[700],
        ),
        body: Center(
          child: Text('Detalhes da refeição'),
        ));
  }
}
