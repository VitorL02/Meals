import 'package:flutter/material.dart';
import 'screens/categoriesScreen.dart';
import 'package:flutter/cupertino.dart';
import 'screens/categoriesMelsScreen.dart';
import 'screens/settingsScreen.dart';
import 'utils/appRoutes.dart';
import 'screens/mealDetail.dart';
import 'screens/tabsScreen.dart';
import 'models/meal.dart';
import 'data/dummy_data.dart';

void main() => runApp(MealsApp());

class MealsApp extends StatefulWidget {
  @override
  _MealsAppState createState() => _MealsAppState();
}

class _MealsAppState extends State<MealsApp> {
  List<Meal> _avalibleMeals = DUMMY_MEALS;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              // ignore: deprecated_member_use
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.Categories_Meals: (ctx) =>
            CategoriesMealsScreen(_avalibleMeals),
        AppRoutes.MealDetails: (ctx) => MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
      },
      //onUnknownRoute : Quando não encontrada a pagina,esse metodo e chamado,e retorna pra pagina principal das categorias,similar ao erro 404 web
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) {
            return CategoriesScreen();
          },
        );
      },
    );
  }
}
