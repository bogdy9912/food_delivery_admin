import 'package:flutter/material.dart';
import 'package:food_delivery_admin/src/presentation/home_page/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      drawer: Drawer(child: AppDrawer()),
    );
  }
}
