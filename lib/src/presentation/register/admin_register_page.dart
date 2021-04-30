import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/presentation/app_routes.dart';

class AdminRegisterPage extends StatefulWidget {
  const AdminRegisterPage();

  @override
  _AdminRegisterPageState createState() => _AdminRegisterPageState();
}

class _AdminRegisterPageState extends State<AdminRegisterPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin info'),
      ),
      body: Form(
        child: Builder(
          builder: (BuildContext context) => SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(hintText: 'email admin'),
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  controller: _password,

                  decoration: const InputDecoration(hintText: 'password admin'),
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  controller: _confirmPassword,
                  decoration: const InputDecoration(hintText: 'confirm password admin'),
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  controller: _firstName,
                  decoration: const InputDecoration(hintText: 'prenume admin'),
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  controller: _lastName,
                  decoration: const InputDecoration(hintText: 'nume admin'),
                  textInputAction: TextInputAction.next,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.companyRegister);
                    StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(
                        email: _email.text,
                        password: _password.text,
                        firstName: _firstName.text,
                        lastName: _lastName.text));
                  },
                  child: const Text('continua'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
