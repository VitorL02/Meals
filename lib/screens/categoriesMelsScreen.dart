import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesMelsScreen extends StatelessWidget {
  final Category category;

  CategoriesMelsScreen(this.category);

  @override
  Widget build(BuildContext context) {
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
