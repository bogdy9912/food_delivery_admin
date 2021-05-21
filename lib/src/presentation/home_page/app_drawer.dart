import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/actions/company/index.dart';
import 'package:food_delivery_admin/src/containers/auth/user_container.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/presentation/app_routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AdminUser? admin) => SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: const Text('Gestionare Meniul Zilei'),
              leading: const Icon(Icons.done),
              onTap: () {
                StoreProvider.of<AppState>(context)
                    .dispatch(const GetDailyMeniu());
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
                StoreProvider.of<AppState>(context)
                    .dispatch(GetEmployees(adminId: admin!.uid));
                Navigator.pushNamed(context, AppRoutes.employeeAccounts);
              },
            ),
          ],
        ),
      ),
    );
  }
}
