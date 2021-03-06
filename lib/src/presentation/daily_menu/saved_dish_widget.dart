import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/company/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/presentation/app_routes.dart';

class SavedDishWidget extends StatefulWidget {
  const SavedDishWidget(
      {required this.dish, required this.categoryId, required this.isPressed});

  final Dish dish;
  final String categoryId;
  final bool isPressed;

  @override
  _SavedDishWidgetState createState() => _SavedDishWidgetState();
}

class _SavedDishWidgetState extends State<SavedDishWidget> {
  bool isPressed = false;

  @override
  void initState() {
    super.initState();
    isPressed = widget.isPressed;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.dish.name),
      subtitle: Text(widget.dish.description ?? ''),
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.addSavedDish,
            arguments: widget.dish);
      },
      trailing: Column(
        children: <Widget>[
//          Text(widget.dish.price.toString()),
          IconButton(
            icon: isPressed == false
                ? const Icon(Icons.add_circle_outline)
                : const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
            onPressed: () {
              setState(() {
                isPressed = !isPressed;
              });
              if (isPressed) {
                StoreProvider.of<AppState>(context).dispatch(UpdateDishes(
                    categoryId: widget.categoryId, add: widget.dish));
              } else {
                StoreProvider.of<AppState>(context).dispatch(UpdateDishes(
                    categoryId: widget.categoryId, remove: widget.dish));
              }
            },
          )
        ],
      ),
    );
  }
}
