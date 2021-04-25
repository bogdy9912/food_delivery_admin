import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/models/auth/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:redux/redux.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({required this.builder});

  final ViewModelBuilder<AdminUser?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AdminUser?>(
        builder: builder, converter: (Store<AppState> store) => store.state.auth.user);
  }
}
