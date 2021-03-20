import 'package:Meals/models/meal.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  const MealItem(this.meal);

  void _selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            //Stack Permite que um texto ou outra informação fique em cima da imagem
            Stack(
              children: <Widget>[
                //ClipRRect adiciona a borda na imagem,o only foi adicionado porque informações vão ser adicionadas embaixo
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
