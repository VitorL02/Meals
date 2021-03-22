import 'package:flutter/material.dart';

import 'categoriesScreen.dart';
import 'favoriteScreen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Vamos Cozinhar?',
            style:
                TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.category), text: 'Categorias'),
              Tab(icon: Icon(Icons.favorite), text: 'Favoritos')
            ],
          ),
          backgroundColor: Colors.red[700],
        ),
        body: TabBarView(children: [
          CategoriesScreen(),
          FavoriteScreen(),
        ]),
      ),
    );
  }
}
