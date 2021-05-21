import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:redux/redux.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({required this.builder, required this.index});

  final ViewModelBuilder<MeniuItem> builder;
  final int index;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MeniuItem>(
      builder: builder,
      converter: (Store<AppState> store) =>
          store.state.companyState.meniu!.items[index],
    );
  }
}
