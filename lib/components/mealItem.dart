import 'package:Meals/models/meal.dart';
import 'package:flutter/material.dart';
import '../utils/appRoutes.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  const MealItem(this.meal);

  void _selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      AppRoutes.MealDetails,
      arguments: meal,
    )
        .then((result) {
      // Metodo then espera e logo depois executa,com ele e possivel buscar a informação de que a Meal foi favoritada
      //(trabalha junto com o navigator.of.pop) conceito de async
      if (result == null) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMeal(context),
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
                ),
                //Componente que so funciona dentro da Stack e controla o posicionamento dos componentes dela
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      meal.title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      //Adiciona a quebra de linha se for necessaria
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 6,
                      ),
                      Text('${meal.duration} min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.work),
                      SizedBox(
                        width: 6,
                      ),
                      Text(meal.complexityText),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 6,
                      ),
                      Text(meal.costText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
