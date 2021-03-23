import 'package:flutter/material.dart';
import '../utils/appRoutes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 22,
            fontWeight: FontWeight.bold),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.red[400],
          alignment: Alignment.bottomCenter,
          child: Text(
            'Vamos Cozinhar?',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),
          ),
        ),
        //Espaçamento
        SizedBox(height: 20),
        _createItem(
          Icons.restaurant, 'Refeições',
          () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME),
          //pushReplacementNamed = Substitui a tela e não empilha,melhor performace
        ),
        _createItem(
            Icons.settings,
            'Configurações',
            () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS)),
      ],
    ));
  }
}
