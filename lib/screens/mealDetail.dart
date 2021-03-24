import '../models/meal.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  Widget _createSectionTitle(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        // ignore: deprecated_member_use
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget _createSectionContainer(Widget child) {
    return Container(
      width: 300,
      height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
          style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red[700],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 160,
            width: double.infinity,
            child: Image.network(meal.imageUrl, fit: BoxFit.cover),
          ),
          _createSectionTitle(context, meal.title),
          _createSectionContainer(ListView.builder(
              itemCount: meal.ingredients.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(meal.ingredients[index]),
                  ),
                  color: Colors.redAccent,
                );
              })),
          _createSectionTitle(context, 'Passos'),
          _createSectionContainer(
            ListView.builder(
              itemCount: meal.steps.length,
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('${index + 1}'),
                      ),
                      title: Text(meal.steps[index]),
                    ),
                    //Cria uma linha que divide os componentes
                    Divider(),
                  ],
                );
              },
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
      ),
    );
  }
}
