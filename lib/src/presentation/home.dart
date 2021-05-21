import 'package:flutter/material.dart';
import 'package:food_delivery_admin/src/containers/auth/user_container.dart';
import 'package:food_delivery_admin/src/models/auth/index.dart';
import 'package:food_delivery_admin/src/presentation/home_page/home_page.dart';
import 'package:food_delivery_admin/src/presentation/login/login_page.dart';

class Home extends StatelessWidget {
  const Home();
  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AdminUser? admin) {
        if (admin == null) {
          return const LoginPage();
        }
        return const HomePage();
      },
    );
  }
}
