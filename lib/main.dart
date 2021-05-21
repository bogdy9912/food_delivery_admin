import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/app_theme.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/presentation/app_routes.dart';
import 'package:food_delivery_admin/src/presentation/mixin/init_mixin.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(FoodDeliveryAdmin());
}

class FoodDeliveryAdmin extends StatefulWidget {
  @override
  _FoodDeliveryAdminState createState() => _FoodDeliveryAdminState();
}

class _FoodDeliveryAdminState extends State<FoodDeliveryAdmin>
    with InitMixin<FoodDeliveryAdmin> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data!;
          return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              title: 'Admin',
              theme: appThemeData(context),
              routes: AppRoutes.routes,
            ),
          );
        }
        if (snapshot.hasError) {
          throw snapshot.error!;
        }

        return MaterialApp(
          title: 'Admin',
          theme: ThemeData.dark(),
          home: const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
