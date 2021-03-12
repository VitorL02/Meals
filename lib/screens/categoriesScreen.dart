import 'package:flutter/material.dart';
import '../components/categoryItem.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vamos Cozinhar',
          style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red[700],
      ),
      body: GridView(
          padding: const EdgeInsets.all(25),
          //SliverGridDelegateWithMaxCrossAxisExtent = Area de scroll definida  pelo maximo cross
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES.map((cat) {
            return CategoryItem(cat);
          }).toList()),
    );
  }
}
