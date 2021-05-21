import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/actions/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/presentation/app_routes.dart';
import 'package:food_delivery_admin/src/presentation/mixin/dialog_mixin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with DialogMixin {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _response(AppAction action) {
    if (action is LoginError) {
      showErrorDialog(context: context, title: 'Login error', error: action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Builder(
            builder: (BuildContext context) => SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(
                      hintText: 'email',
                    ),
                  ),
                  TextFormField(
                    controller: _password,
                    decoration: const InputDecoration(
                      hintText: 'password',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print(_email.text);
                      print(_password.text);
                      StoreProvider.of<AppState>(context).dispatch(Login(
                          email: _email.text,
                          password: _password.text,
                          response: _response));
                    },
                    child: const Text('LOGIN'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.adminRegister);
                    },
                    child: const Text('Create an admin account!'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
