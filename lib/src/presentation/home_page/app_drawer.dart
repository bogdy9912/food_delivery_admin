import 'package:flutter/material.dart';
import 'package:food_delivery_admin/src/presentation/app_routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            title: const Text('Gestionare Meniul Zilei'),
            leading: const Icon(Icons.done),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.dailyMeniu);
            },
          ),
          ListTile(
            title: const Text('Gestionare Meniu'),
            leading: const Icon(Icons.done),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.dailyMeniu);
            },
          ),
          ListTile(
            title: const Text('Profil'),
            leading: const Icon(Icons.done),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.dailyMeniu);
            },
          ),
          ListTile(
            title: const Text('Statistici comenzi'),
            leading: const Icon(Icons.done),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.dailyMeniu);
            },
          ),
          ListTile(
            title: const Text('Gestionare conturi angajati'),
            leading: const Icon(Icons.done),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.dailyMeniu);
            },
          ),
        ],
      ),
    );
  }
}
