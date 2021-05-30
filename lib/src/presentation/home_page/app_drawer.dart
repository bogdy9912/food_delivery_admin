import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/actions/company/index.dart';
import 'package:food_delivery_admin/src/actions/index.dart';
import 'package:food_delivery_admin/src/containers/auth/user_container.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/presentation/app_routes.dart';
import 'package:food_delivery_admin/src/presentation/mixin/dialog_mixin.dart';

class AppDrawer extends StatelessWidget with DialogMixin {
  void _response(AppAction action, BuildContext context) {
    if (action is GetEmployeesError) {
      showErrorDialog(context: context, title: 'Error', error: action.error);
    } else if (action is GetEmployeesSuccessful) {
      Navigator.pushNamed(context, AppRoutes.employeeAccounts);
    } else if (action is GetDailyMeniuError) {
      showErrorDialog(context: context, title: 'Error', error: action.error);
    } else if (action is GetDailyMeniuSuccessful) {
      Navigator.pushNamed(context, AppRoutes.dailyMeniu);
    }
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AdminUser? admin) => SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: const Text('Gestionare Meniul Zilei'),
              leading: const Icon(Icons.fastfood_rounded),
              onTap: () {
                StoreProvider.of<AppState>(context).dispatch(GetDailyMeniu(
                    response: (AppAction action) =>
                        _response(action, context)));
              },
            ),
          /*  ListTile(
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
            ),*/
            ListTile(
              title: const Text('Gestionare conturi angajati'),
              leading: const Icon(Icons.group),
              onTap: () {
                StoreProvider.of<AppState>(context).dispatch(GetEmployees(
                    adminId: admin!.uid,
                    response: (AppAction action) =>
                        _response(action, context)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
