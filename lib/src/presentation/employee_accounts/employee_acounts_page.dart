import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_admin/src/containers/auth/employees_container.dart';
import 'package:food_delivery_admin/src/models/auth/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/presentation/employee_accounts/create_employee_widget.dart';
import 'package:food_delivery_admin/src/presentation/employee_accounts/employee_widget.dart';

class EmployeeAccountsPage extends StatelessWidget {
  const EmployeeAccountsPage();




  @override
  Widget build(BuildContext context) {
    return EmployeesContainer(
      builder: (BuildContext context, Map<String, EmployeeUser> employees) => Scaffold(
        appBar: AppBar(
          title: const Text('Gestionare conturi'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: employees.length,
          itemBuilder: (BuildContext context, int index) {
            final EmployeeUser employee = employees.values.toList()[index];
            return EmployeeWidget(employee);
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            showDialog<AlertDialog>(
              context: context,
              builder: (BuildContext context) => CreateEmployeeWidget(),
            );
          },
        ),
      ),
    );
  }
}
