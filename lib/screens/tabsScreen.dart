import 'package:flutter/material.dart';

import 'categoriesScreen.dart';
import 'favoriteScreen.dart';
import '../components/mainDrawer.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  const TabsScreen(this.favoriteMeals);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: MainDrawer(),
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
          FavoriteScreen(widget.favoriteMeals),
        ]),
      ),
    );
  }
}
