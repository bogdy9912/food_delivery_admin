import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/containers/auth/user_container.dart';
import 'package:food_delivery_admin/src/models/auth/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';

class EmployeeAccountsPage extends StatelessWidget {
  const EmployeeAccountsPage();

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AdminUser? admin) => Scaffold(
        appBar: AppBar(
          title: const Text('Gestionare conturi'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: admin!.employees.length,
          itemBuilder: (BuildContext context, int index) => Container(width: 100,height: 100, color: Colors.red,),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {

            final TextEditingController _email = TextEditingController();
            final TextEditingController _password = TextEditingController();
            final List<Role> roles = <Role>[];
            bool _receptionist = false;
            bool _driver = false;

            showDialog<AlertDialog>(
                context: context,
                builder: (BuildContext context) => Form(
                  child: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) => AlertDialog(
                          title: const Text('Adauga un angajat'),
                          content:  SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      TextFormField(
                                        controller: _email,
                                        decoration: const InputDecoration(labelText: 'email'),
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (String? value) {
                                          if (value == null || !value.contains('@') || !value.contains('.')) {
                                            return 'Introduce-ti o adresa valida';
                                          }
                                          return null;
                                        },
                                      ),
                                      TextFormField(
                                        controller: _password,
                                        decoration: const InputDecoration(labelText: 'password'),
                                        keyboardType: TextInputType.visiblePassword,
                                        obscureText: true,
                                        validator: (String? value) {
                                          if (value == null || value.length < 6) {
                                            return 'Introduce-ti o adresa valida';
                                          }
                                          return null;
                                        },
                                      ),
                                      TextFormField(
                                        decoration: const InputDecoration(labelText: 'confirm password'),
                                        keyboardType: TextInputType.visiblePassword,
                                        obscureText: true,
                                        validator: (String? value) {
                                          if (value != _password.text) {
                                            return 'Parolele nu coincid';
                                          }
                                          return null;
                                        },
                                      ),
                                      CheckboxListTile(
                                          value: _receptionist,
                                          title: const Text('Receptionist'),
                                          onChanged: (bool? value) {
                                            setState(() {
                                              if (value == true) {
                                                roles.add(Role.receptionist);
                                              } else {
                                                roles.remove(Role.receptionist);
                                              }
                                              _receptionist = value!;
                                            });
                                          }),
                                      CheckboxListTile(
                                          value: _driver,
                                          title: const Text('Sofer'),
                                          onChanged: (bool? value) {
                                            setState(() {
                                              if (value == true) {
                                                roles.add(Role.driver);
                                              } else {
                                                roles.remove(Role.driver);
                                              }
                                              _driver = value!;
                                            });
                                          }),
                                    ],
                                  ),
                                ),


                          actions: <Widget>[
                            TextButton(
                                onPressed: () {
                                  final bool valid = Form.of(context)!.validate();
                                  if (valid && roles.isNotEmpty) {
                                    StoreProvider.of<AppState>(context).dispatch(CreateEmployeeAccount(
                                        email: _email.text, password: _password.text, roles: roles));
                                  }
                                },
                                child: const Text('Adauga')),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Anuleaza')),
                          ],
                        ),
                      ),
                ));
          },
        ),
      ),
    );
  }
}
