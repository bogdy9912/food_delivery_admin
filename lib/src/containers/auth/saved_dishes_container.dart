import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:redux/redux.dart';

class SavedDishesContainer extends StatelessWidget {
  const SavedDishesContainer({required this.builder});

  final ViewModelBuilder<Map<String, Dish>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, Dish>>(
        builder: builder,
        converter: (Store<AppState> store) =>
            store.state.auth.user!.savedDishes.asMap());
  }
}
