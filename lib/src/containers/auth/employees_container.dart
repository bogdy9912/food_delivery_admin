import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:redux/redux.dart';

class EmployeesContainer extends StatelessWidget {
  const EmployeesContainer({required this.builder});

  final ViewModelBuilder<Map<String, EmployeeUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, EmployeeUser>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.auth.employees.asMap(),
    );
  }
}
