import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/company/index.dart';
import 'package:food_delivery_admin/src/containers/auth/saved_dishes_container.dart';
import 'package:food_delivery_admin/src/containers/company/category_container.dart';
import 'package:food_delivery_admin/src/models/companies/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/presentation/app_routes.dart';
import 'package:food_delivery_admin/src/presentation/daily_menu/saved_dish_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(this.ind);

  final int ind;

  @override
  Widget build(BuildContext context) {
    return SavedDishesContainer(
      builder: (BuildContext context, Map<String, Dish> savedDishes) => CategoryContainer(
        index: ind,
        builder: (BuildContext context, MeniuItem item) => Column(
          children: <Widget>[
            ListTile(
              title: Text(item.category),
              onLongPress: () {
                StoreProvider.of<AppState>(context).dispatch(UpdateCategories(remove: item));
              },
              trailing: IconButton(
                onPressed: () {
                  showDialog<AlertDialog>(
                    context: context,
                    builder: (BuildContext context) => Form(
                      child: Builder(
                        builder: (BuildContext context) {
                          if (savedDishes.isEmpty) {
                            return AlertDialog(
                              content: OutlinedButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Icon(Icons.add_circle_outline),
                                    Text('Adauga'),
                                  ],
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, AppRoutes.addSavedDish);
                                },
                              ),
                              actions: <Widget>[TextButton(onPressed: () {}, child: const Text('anuleaza'))],
                            );
                          }
                          return AlertDialog(
                            content: Container(
                              height: 400,
                              child: ListView.builder(
                                itemCount: savedDishes.length + 1,
                                itemBuilder: (BuildContext context, int index) {
                                  if (index == 0) {
                                    return OutlinedButton(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const <Widget>[
                                          Icon(Icons.add_circle_outline),
                                          Text('Adauga'),
                                        ],
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, AppRoutes.addSavedDish);
                                      },
                                    );
                                  }
                                  final Dish dish = savedDishes.values.toList()[index - 1];
                                  return SavedDishWidget(
                                    dish: dish,
                                    categoryId: item.id,
                                    isPressed: item.dishes.contains(dish),
                                  );
                                },
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('anuleaza'),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.add),
              ),
            ),
            Column(
              children: List<Widget>.generate(
                item.dishes.length,
                (int index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: ListTile(
                    title: Text(item.dishes[index].name),
                    subtitle: Text(item.dishes[index].description ?? ''),
                    leading: item.dishes[index].image != null
                        ? Image.network(
                            item.dishes[index].image!,
                            height: 20,
                            width: 20,
                          )
                        : Container(
                            width: 20,
                            height: 20,
                      color: Colors.black,
                          ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline_rounded, color: Colors.red),
                      onPressed: () {
                        print(item);
                        StoreProvider.of<AppState>(context)
                            .dispatch(UpdateDishes(categoryId: item.id, remove: item.dishes[index]));
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
