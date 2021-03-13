import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Criando uma maneira de pegar as categorias por meio da navegação
    final category = ModalRoute.of(context).settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas'),
      ),
      body: Center(
        child: Text('Receita Categoria ${category.id}'),
      ),
    );
  }
}
