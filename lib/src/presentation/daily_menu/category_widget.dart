import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/company/index.dart';
import 'package:food_delivery_admin/src/containers/company/category_container.dart';
import 'package:food_delivery_admin/src/models/companies/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget(this.ind);

  final int ind;
  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CategoryContainer(
      index: ind,
      builder: (BuildContext context, MeniuItem item) =>  Column(
        children: <Widget>[
          ListTile(
            title: Text(item.category),
            trailing: IconButton(
              onPressed: () {
                showDialog<AlertDialog>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    content: TextField(
                      controller: _name,
                      decoration: const InputDecoration(hintText: 'name'),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          final DocumentReference ref = FirebaseFirestore.instance.collection('NOT USE').doc();
                          final Dish newDish = Dish((DishBuilder b) => b.name = _name.text);
                          StoreProvider.of<AppState>(context).dispatch(UpdateDishes(categoryId: item.id, add: newDish));
                        },
                        child: const Text('adauga'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('anuleaza'),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.add),
            ),
          ),
          Column(children: List<Widget>.generate(item.dishes.length, (int index) => Text(item.dishes[index].name))),
        ],
      ),
    );
  }
}
