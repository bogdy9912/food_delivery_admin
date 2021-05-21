import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/models/auth/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';

class EmployeeWidget extends StatelessWidget {
  const EmployeeWidget(this.employee);

  final EmployeeUser employee;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(employee.firstName + ' ' + employee.lastName),
      trailing: IconButton(
        onPressed: () {
          StoreProvider.of<AppState>(context)
              .dispatch(DeleteEmployee(employee: employee));
        },
        icon: const Icon(Icons.delete_outline_rounded),
      ),
    );
  }
}
